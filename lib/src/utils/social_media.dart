import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:template/custom_icons.dart';
import 'package:template/src/models/social_media_links.dart';
import 'package:template/src/modules/specialist_screen/widget/share_button.dart';
import 'package:url_launcher/url_launcher.dart';

enum SocialMedia { facebook, instagram, www }

Future socialFacebook(SocialMedia socialPlatform, String? facebookName) async {
  final Map<SocialMedia, Uri> urls = {
    SocialMedia.facebook:
        Uri(scheme: 'https', path: '//www.facebook.com/$facebookName'),
  };

  final url = urls[socialPlatform]!;

  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future socialInstagram(
    SocialMedia socialPlatform, String? instagramName) async {
  final Map<SocialMedia, Uri> nativeUrl = {
    SocialMedia.instagram:
        Uri(scheme: 'instagram', path: '//user?username=/$instagramName'),
  };

  final Map<SocialMedia, Uri> webUrl = {
    SocialMedia.instagram:
        Uri(scheme: 'https', path: '//www.instagram.com/$instagramName'),
  };

  final native = nativeUrl[socialPlatform]!;
  final web = webUrl[socialPlatform]!;

  if (await canLaunchUrl(native)) {
    await launchUrl(native);
  } else if (await canLaunchUrl(web)) {
    await launchUrl(web);
  } else {
    log("can't open Instagram");
  }
}

Future socialWebsite(SocialMedia socialPlatform, String? webSiteUrl) async {
  final Map<SocialMedia, Uri> urls = {
    SocialMedia.www: Uri.parse(webSiteUrl!),
  };

  final url = urls[socialPlatform]!;

  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

List<Widget> buildSocialMediaRow(SocialMediaLinks socialMediaLinks) {
  List<Widget> children = [];

  if (socialMediaLinks.facebookLink != null) {
    children.add(ShareButton(
      callback: () =>
          socialFacebook(SocialMedia.facebook, socialMediaLinks.facebookLink),
      icon: CustomIcons.facebook,
      mediaName: 'Facebook',
    ));
  } else if (socialMediaLinks.instagramLink != null) {
    children.add(ShareButton(
      callback: () => socialInstagram(
          SocialMedia.instagram, socialMediaLinks.instagramLink),
      icon: CustomIcons.instagram,
      mediaName: 'Instagram',
    ));
  } else if (socialMediaLinks.websiteLink != null) {
    children.add(ShareButton(
      callback: () =>
          socialWebsite(SocialMedia.www, socialMediaLinks.websiteLink),
      icon: CustomIcons.globe,
      mediaName: 'WWW',
    ));
  }

  return children;
}
