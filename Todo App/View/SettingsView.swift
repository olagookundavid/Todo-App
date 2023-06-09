//  Created by David OH 
import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode

    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 0) {
                // MARK: - FORM
                
                Form {
                        
                        // MARK: - SECTION 3
                        
                        Section(header: Text("Follow us on social media")) {
                            FormRowLinkView(icon: "globe", color: Color.pink, text: "Website", link: "https://swiftuimasterclass.com")
                            FormRowLinkView(icon: "link", color: Color.blue, text: "Twitter", link: "https://twitter.com/robertpetras")
                            FormRowLinkView(icon: "play.rectangle", color: Color.green, text: "Courses", link: "https://www.udemy.com/user/robert-petras")
                        } //: SECTION 3
                        .padding(.vertical, 3)
                        
                        // MARK: - SECTION 4
                        
                        Section(header: Text("About the application")) {
                            FormRowStaticView(icon: "gear", firstText: "Application", secondText: "Todo")
                            FormRowStaticView(icon: "checkmark.seal", firstText: "Compatibility", secondText: "iPhone, iPad")
                            FormRowStaticView(icon: "keyboard", firstText: "Developer", secondText: "David Olagookun")
                            FormRowStaticView(icon: "paintbrush", firstText: "Designer", secondText: "David Olagookun")
                            FormRowStaticView(icon: "flag", firstText: "Version", secondText: "1.5.0")
                        } //: SECTION 4
                        .padding(.vertical, 3)
                     //: FORM
                    .listStyle(GroupedListStyle())
                    .environment(\.horizontalSizeClass, .regular)
                    
                    // MARK: - FOOTER
                    
                    Text("Copyright © All rights reserved.\nBetter Apps ♡ Less Code")
                        .multilineTextAlignment(.center)
                        .font(.footnote)
                        .padding(.top, 6)
                        .padding(.bottom, 8)
                        .foregroundColor(Color.secondary)
                } //: VSTACK
                .navigationBarItems(trailing:
                                        Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                }
                )
                .navigationBarTitle("Settings", displayMode: .inline)
                .background(Color("ColorBackground").edgesIgnoringSafeArea(.all))
            } //: NAVIGATION
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }}

// MARK: - PREIVEW

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
      .previewDevice("iPhone 12 Pro")
  }
}
