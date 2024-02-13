/*
 * Copyright (c) Prismlabs, Inc. and affiliates.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

import SwiftUI

struct ProfileHeightSection: View {
    @State private var showPicker: Bool = false

    var body: some View {
        VStack(alignment: .leading) {
            Text("Profile.Form.Height", comment: "Height form field label")
                .font(.body)
                .fontWeight(.bold)

            ProfileHeightContent(showPicker: self.$showPicker)
                .alwaysPopover(isPresented: self.$showPicker) {
                    HeightPicker()
                }
        }
    }
}

struct ProfileHeightSection_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeightSection()
    }
}
