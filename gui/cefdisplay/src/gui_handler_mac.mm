/// \file gui_handler_mac.mm
/// \ingroup CanvasPainter ROOT7
/// \author Sergey Linev <S.Linev@gsi.de>
/// \date 2017-06-29
/// \warning This is part of the ROOT 7 prototype! It will change without notice. It might trigger earthquakes. Feedback
/// is welcome!

/*************************************************************************
 * Copyright (C) 1995-2017, Rene Brun and Fons Rademakers.               *
 * All rights reserved.                                                  *
 *                                                                       *
 * For the licensing terms see $ROOTSYS/LICENSE.                         *
 * For the list of contributors see $ROOTSYS/README/CREDITS.             *
 *************************************************************************/

#include "gui_handler.h"

#import <Cocoa/Cocoa.h>

#include "include/cef_browser.h"


void GuiHandler::PlatformInit()
{
   // do nothing
}


void GuiHandler::PlatformTitleChange(CefRefPtr<CefBrowser> browser, const CefString &title)
{
   NSView *view = (NSView *)browser->GetHost()->GetWindowHandle();
   NSWindow *window = [view window];
   std::string titleStr(title);
   NSString *str = [NSString stringWithUTF8String:titleStr.c_str()];
   [window setTitle:str];
}
