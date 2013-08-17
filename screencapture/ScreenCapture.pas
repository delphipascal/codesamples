unit ScreenCapture;

interface

uses
  System.SysUtils,      // FreeAndNil
  Winapi.Windows,       // GetWindowDC, GetWindowRect
  Vcl.Graphics,         // TBitmap
  Vcl.Imaging.pngimage; // TPNGImage

procedure CaptureWindow(Handle: HWND; ABitmap:TBitmap);
procedure CaptureWindowToFile(Handle: HWND; const AFileName: string);

implementation

procedure CaptureWindow(Handle: HWND; ABitmap:TBitmap);
var
  dcWindow: HDC;
  Rect: TRect;
begin
  try
    dcWindow:=GetWindowDC(Handle);
    GetWindowRect(Handle, Rect);
    ABitmap.PixelFormat:=pf24bit;
    ABitmap.Width:=Rect.Width;
    ABitmap.Height:=Rect.Height;
    BitBlt(ABitmap.Canvas.Handle, 0, 0, ABitmap.Width, ABitmap.Height,
      dcWindow, 0, 0, SRCCOPY);
  finally
    ReleaseDC(Handle, dcWindow);
  end;
end;

procedure CaptureWindowToFile(Handle: HWND; const AFileName: string);
var
  PNG: TPngImage;
  Bitmap: TBitmap;
begin
  Bitmap:=TBitmap.Create;
  try
    CaptureWindow(Handle, Bitmap);
    PNG:=TPngImage.Create;
    try
      PNG.Assign(Bitmap);
      PNG.CompressionLevel := 9;
      PNG.SaveToFile(AFileName);
    finally
      FreeAndNil(PNG);
    end;
  finally
    FreeAndNil(Bitmap);
  end;
end;

end.
