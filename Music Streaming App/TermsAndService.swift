//
//  TermsAndService.swift
//  Music Streaming App
//
//  Created by 64018011 on 4/18/24.
//

import SwiftUI

struct TermsAndService: View {
    let systemGold = Color(red: 0.98, green: 0.84, blue: 0.592)


    var body: some View {
        VStack {
            // Place the logo at the top
            Image("newspaper")
                .foregroundColor(systemGold)
                .font(.system(size: 120))
                .padding()

            // The scrollable terms and conditions text
            ScrollView {
                Text(termsAndConditionsText)
                    .foregroundColor(systemGold)
                    .padding() // Adjust for better readability
                    .multilineTextAlignment(.leading)
            }

            // Additional elements or spacing can be added here if needed
        }
        .padding() // Optional overall padding for the VStack
    }

    // Terms and Conditions text to be displayed
    let termsAndConditionsText = """
    Terms and Conditions for Trak Linx


    Welcome to Trak Linx! These Terms and Conditions ("Terms") govern your use of the Trak Linx mobile application ("App") and related services provided by The Moist Men ("we," "us," or "our"). By using the App, you agree to be bound by these Terms. If you do not agree to these Terms,  DO NOT use the App.

    1. Acceptance of Terms
    By accessing or using the App, you acknowledge that you have read, understood, and agree to be bound by these Terms. We may update these Terms from time to time without notice. Your continued use of the App after any changes indicates your acceptance of the new Terms.

    2. Use of the App
    You may use the App for personal, non-commercial purposes. You agree to use the App only for lawful purposes and in accordance with these Terms. You must not use the App to:
    - Violate any applicable laws or regulations.
    - Infringe on the rights of others.
    - Upload or distribute any content that is offensive, illegal, or violates the rights of others.
    - Interfere with the operation of the App or its associated networks.

    3. Intellectual Property
    The App and its content, including but not limited to text, graphics, logos, and music, are the property of The Moist Men or its licensors. You may not reproduce, distribute, or create derivative works based on the App without our prior written consent.

    4. User Accounts
    To access certain features of the App, you may be required to create a user account. You are responsible for maintaining the confidentiality of your account credentials. You agree to notify us immediately of any unauthorized use of your account. We reserve the right to terminate accounts that violate these Terms.

    5. Subscription and Payment
    Certain features of the App may require a subscription or payment. If you purchase a subscription, you agree to provide accurate and complete payment information. You are responsible for all charges incurred through your account. Subscription fees are non-refundable, except as required by law.

    6. Privacy
    Our Privacy Policy explains how we collect, use, and disclose your personal information. By using the App, you agree to our Privacy Policy.

    7. Termination
    We reserve the right to terminate your access to the App at any time for any reason, including but not limited to violation of these Terms. Termination may occur without prior notice or liability.

    8. Disclaimers and Limitation of Liability
    The App is provided "as is" without warranty of any kind. We do not guarantee that the App will be error-free, secure, or available at all times. To the extent permitted by law, The Moist Men are not liable for any direct, indirect, incidental, or consequential damages arising from your use of the App.

    9. Governing Law and Dispute Resolution
    These Terms are governed by and construed in accordance with the laws of the United States. Any disputes arising from these Terms or the App will be resolved through binding arbitration in the United States. You agree to waive any right to a jury trial.

    10. Contact Information
    If you have any questions about these Terms, please contact us at64018011@ep-student.org.
    """
}

#Preview {
    TermsAndService()
}
