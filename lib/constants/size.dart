import 'package:flutter/material.dart';


const double kMinDesktopWidth = 600.0;
const double kMedDesktopWidth = 800.0;

// import 'package:app_portfolio/utills/project_utils.dart';
// import 'package:flutter/material.dart';
// import 'dart:js' as js;
// import '../constants/colors.dart';
//
// class ProjectCard extends StatelessWidget {
//   const ProjectCard({super.key, required this.project});
//   final ProjectUtils project;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       clipBehavior: Clip.antiAlias,
//       height: 290,
//       width: 260,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: CustomColor.bgLight2,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Image.asset(
//             project.image,
//             height: 117,
//             width: 260,
//             fit: BoxFit.cover,),
//
//           //title
//           Padding(
//             padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
//             child: Text(
//               project.title,
//               style:const TextStyle(
//                 fontWeight: FontWeight.w600,
//                 color: CustomColor.whitePrimary,
//               ),
//             ),
//           ),
//           //subtitle
//
//           Padding(
//             padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
//             child: Text(
//               project.subtitle,
//               style:const TextStyle(
//                 fontSize: 13,
//                 fontWeight: FontWeight.w600,
//                 color: CustomColor.whiteSecondary,
//               ),
//             ),
//           ),
//           const Spacer(),
//
//           //footer
//           Container(
//             color: CustomColor.bgLight1,
//             padding:const EdgeInsets.symmetric(horizontal: 12, vertical: 10,
//             ),
//             child: Row(
//               children: [
//                 const  Text('Available on:', style: TextStyle(
//                   color: CustomColor.yellowSecondary,
//                   fontSize: 10,
//                 ),
//                 ),
//                 const Spacer(),
//
//                 if(project.iOSLink!=null)
//
//                   InkWell(
//                     onTap: (){
//                       js.context.callMethod("open", [project.iOSLink]);
//                     },
//                     child: Image.asset(
//                       "assets/android.jpeg",
//                       width: 12,
//                     ),
//                   ),
//
//                 if(project.androidLink!=null)
//
//                   Padding(
//                     padding: const EdgeInsets.only(left: 6),
//                     child: InkWell(
//                       onTap: (){
//                         js.context.callMethod("open", [project.androidLink]);
//
//                       },
//                       child: Image.asset(
//                         "assets/web.jpeg",
//                         width: 12,
//                       ),
//                     ),
//                   ),
//
//                 if(project.webLink!=null)
//
//                   Padding(
//                     padding: const EdgeInsets.only(left: 6),
//                     child:InkWell(
//                       onTap: (){
//                         js.context.callMethod("open", [project.webLink]);
//
//                       },
//                       child: Image.asset(
//                         "assets/ios.png",
//                         width: 12,
//                       ),
//                     ),
//                   ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//
//   }
// }


//contact

// import 'package:app_portfolio/constants/size.dart';
// import 'package:app_portfolio/constants/sns_link.dart';
// import 'package:flutter/material.dart';
//
// import '../constants/colors.dart';
// import 'custom_textfield.dart';
// import 'dart:js' as js;
//
// class ContactSection extends StatelessWidget {
//   const ContactSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
//       color: CustomColor.bgLight1,
//       child: Column(
//         children: [
//           // Title
//           Text(
//             "Get in touch",
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 24,
//               color: CustomColor.whitePrimary,
//             ),
//           ),
//           const SizedBox(height: 50),
//
//           // Name and Email Fields
//           ConstrainedBox(
//             constraints: const BoxConstraints(maxWidth: 700, maxHeight: 100,),
//             child: LayoutBuilder(builder: (context, constraints){
//               if (constraints.maxWidth>=kMinDesktopWidth){
//                 return buildNameEmailFieldDesktop();
//               }
//               //else
//               return buildNameEmailFieldMobile();
//             }),
//           ),
//           const SizedBox(height: 20),
//
//           // Message Field
//           ConstrainedBox(
//             constraints: const BoxConstraints(maxWidth: 700),
//             child: CustomTextField(
//               hintText: "Your message",
//               maxLines: 14,
//             ),
//           ),
//           const SizedBox(height: 20),
//
//           // Send Button
//           SizedBox(
//             width: double.maxFinite,
//             child: ConstrainedBox(
//               constraints: const BoxConstraints(maxWidth: 700),
//               child: ElevatedButton(
//                 onPressed: () {},
//                 child: const Text("Get in touch"),
//               ),
//             ),
//           ),
//
//           const SizedBox(height: 30),
//
//           // Divider
//           ConstrainedBox(
//             constraints: const BoxConstraints(maxWidth: 300),
//             child: const Divider(),
//           ),
//           const SizedBox(height: 15),
//
//           // Social Links
//           Wrap(
//             spacing: 12,
//             runSpacing: 12,
//             alignment: WrapAlignment.center,
//             children: [
//               InkWell(
//                 onTap: () {
//                   js.context.callMethod('open', [SnsLinks.github]);
//                 },
//                 child: Image.asset(
//                   "assets/git.jpeg",
//                   width: 30,
//                   height: 30,
//                 ),
//               ),
//               InkWell(
//                 onTap: () {
//                   js.context.callMethod('open', [SnsLinks.github]);
//
//                 },
//                 child: Image.asset(
//                   "assets/youtube.png",
//                   width: 30,
//                   height: 30,
//                 ),
//               ),
//               InkWell(
//                 onTap: () {
//                   js.context.callMethod('open', [SnsLinks.github]);
//
//                 },
//                 child: Image.asset(
//                   "assets/linkedin.png",
//                   width: 30,
//                   height: 30,
//                 ),
//               ),
//               InkWell(
//                 onTap: () {
//                   js.context.callMethod('open', [SnsLinks.github]);
//
//                 },
//                 child: Image.asset(
//                   "assets/git.jpeg",
//                   width: 30,
//                   height: 30,
//                 ),
//               ),
//               InkWell(
//                 onTap: () {
//                   js.context.callMethod('open', [SnsLinks.github]);
//
//                 },
//                 child: Image.asset(
//                   "assets/git.jpeg",
//                   width: 30,
//                   height: 30,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//   Row buildNameEmailFieldDesktop(){
//     return  Row(
//       children: [
//         Flexible(
//           child: CustomTextField(
//             hintText: "Your name",
//           ),
//         ),
//         const SizedBox(width: 15),
//         Flexible(
//           child: CustomTextField(
//             hintText: "Your email",
//           ),
//         ),
//       ],
//     );
//   }
//
//   Column buildNameEmailFieldMobile(){
//     return  Column(
//       children: [
//         Flexible(
//           child: CustomTextField(
//             hintText: "Your name",
//           ),
//         ),
//         const SizedBox(height: 15),
//         Flexible(
//           child: CustomTextField(
//             hintText: "Your email",
//           ),
//         ),
//       ],
//     );
//   }
// }
