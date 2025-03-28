import 'package:flutter/material.dart';
import 'package:template/custom_icons.dart';
import 'package:template/src/models/social_media_links.dart';
import 'package:template/src/modules/specialist_screen/widget/share_button.dart';
import 'package:template/src/utils/social_media.dart';

class SocialMediaRow extends StatelessWidget {
  final SocialMediaLinks socialMediaLinks;
  const SocialMediaRow({super.key, required this.socialMediaLinks});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        (socialMediaLinks.facebookLink != null)
            ? ShareButton(
                callback: () => socialFacebook(
                    SocialMedia.facebook, socialMediaLinks.facebookLink),
                icon: CustomIcons.facebook,
                mediaName: 'Facebook',
              )
            : const SizedBox(),
        (socialMediaLinks.instagramLink != null)
            ? ShareButton(
                callback: () => socialInstagram(
                    SocialMedia.instagram, socialMediaLinks.instagramLink),
                icon: CustomIcons.instagram,
                mediaName: 'Instagram',
              )
            : const SizedBox(),
        (socialMediaLinks.websiteLink != null)
            ? ShareButton(
                callback: () => socialWebsite(
                    SocialMedia.www, socialMediaLinks.websiteLink),
                icon: CustomIcons.globe,
                mediaName: 'WWW',
              )
            : const SizedBox(),
        // TODO after app is on the app store
        // ShareButtonWidget(
        //   callback: () {},
        //   icon: Icons.share,
        //   mediaName: 'Udostępnij',
        // ),
      ],
    );
  }
}
// children: buildSocialMediaRow(socialMediaLinks));