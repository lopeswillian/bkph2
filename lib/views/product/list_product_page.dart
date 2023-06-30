import 'package:apph2/base_app_module_routing.dart';
import 'package:apph2/infraestructure/utils.dart';
import 'package:apph2/theme/widgets/card_image.dart';
import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../../theme/widgets/h2accordion.dart';

class ListProductPage extends StatefulWidget {
  const ListProductPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _ListProductPageState createState() => _ListProductPageState();
}

class _ListProductPageState extends State<ListProductPage> {
  bool isKeyboardVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const H2AppBar(
        title: Text('Produtos'),
        centerTitle: true,
      ),
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF166FED),
              Color(0xFF00092A),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Container(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(27),
              topRight: Radius.circular(27),
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: Dimension.xl.height,
                horizontal: Dimension.sm.width,
              ),
              child: Column(
                children: [
                  H2Accordion(
                    title: 'Depósito e saque APP Online',
                    icon:
                        '''<svg width="21" height="17" viewBox="0 0 21 17" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M2.625 1.5C1.75547 1.5 1.05 2.17188 1.05 3V6C1.05 6.275 0.81375 6.5 0.525 6.5C0.23625 6.5 0 6.275 0 6V3C0 1.61875 1.17469 0.5 2.625 0.5H18.375C19.8253 0.5 21 1.61875 21 3V6C21 6.275 20.7637 6.5 20.475 6.5C20.1862 6.5 19.95 6.275 19.95 6V3C19.95 2.17188 19.2445 1.5 18.375 1.5H2.625ZM16.275 3.5C16.5637 3.5 16.8 3.725 16.8 4V14.75C16.8 15.7156 15.9764 16.5 14.9625 16.5H6.0375C5.02359 16.5 4.2 15.7156 4.2 14.75V4C4.2 3.725 4.43625 3.5 4.725 3.5C5.01375 3.5 5.25 3.725 5.25 4V12.5C6.98906 12.5 8.4 13.8438 8.4 15.5H12.6C12.6 13.8438 14.0109 12.5 15.75 12.5V4C15.75 3.725 15.9862 3.5 16.275 3.5ZM7.35 15.5C7.35 14.3969 6.40828 13.5 5.25 13.5V14.75C5.25 15.1656 5.60109 15.5 6.0375 15.5H7.35ZM14.9625 15.5C15.3989 15.5 15.75 15.1656 15.75 14.75V13.5C14.5917 13.5 13.65 14.3969 13.65 15.5H14.9625ZM10.5 7C8.95781 7 7.875 7.97813 7.875 9C7.875 10.0219 8.95781 11 10.5 11C12.0422 11 13.125 10.0219 13.125 9C13.125 7.97813 12.0422 7 10.5 7ZM14.175 9C14.175 10.7375 12.4359 12 10.5 12C8.56406 12 6.825 10.7375 6.825 9C6.825 7.2625 8.56406 6 10.5 6C12.4359 6 14.175 7.2625 14.175 9Z" fill="#CECECE"/></svg>''',
                    content: Column(
                      children: [
                        CardImage.large(
                          backgroundImage:
                              "https://h2online.com.br/app-koud/Rectangle%207.png",
                        ),
                      ],
                    ),
                  ),
                  Dimension.md.vertical,
                  H2Accordion(
                    title: 'Produtos Externos',
                    icon:
                        '''<svg width="19" height="18" viewBox="0 0 19 18" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12.6667 1.5625C13.2505 1.5625 13.7222 2.0373 13.7222 2.625V6.875H14.7778V2.625C14.7778 1.45293 13.8311 0.5 12.6667 0.5H10.5556H8.44444H6.33333C5.16892 0.5 4.22222 1.45293 4.22222 2.625V6.875H5.27778V2.625C5.27778 2.0373 5.74948 1.5625 6.33333 1.5625H7.38889V3.42188C7.38889 4.15566 7.97934 4.75 8.70833 4.75H10.2917C11.0207 4.75 11.6111 4.15566 11.6111 3.42188V1.5625H12.6667ZM8.44444 1.5625H10.5556V3.42188C10.5556 3.56797 10.4368 3.6875 10.2917 3.6875H8.70833C8.56319 3.6875 8.44444 3.56797 8.44444 3.42188V1.5625ZM10.8063 17.5H16.8889C18.0533 17.5 19 16.5471 19 15.375V10.0625C19 8.89043 18.0533 7.9375 16.8889 7.9375H14.7778H12.6667H10.8063C11.08 8.24297 11.2944 8.60488 11.433 9H11.6111V10.0592V10.0625V10.8594C11.6111 11.5932 12.2016 12.1875 12.9306 12.1875H14.5139C15.2429 12.1875 15.8333 11.5932 15.8333 10.8594V9H16.8889C17.4727 9 17.9444 9.4748 17.9444 10.0625V15.375C17.9444 15.9627 17.4727 16.4375 16.8889 16.4375H11.4297C11.2911 16.8326 11.0767 17.1945 10.803 17.5H10.8063ZM12.6667 9H14.7778V10.8594C14.7778 11.0055 14.659 11.125 14.5139 11.125H12.9306C12.7854 11.125 12.6667 11.0055 12.6667 10.8594V9ZM8.44444 9C9.0283 9 9.5 9.4748 9.5 10.0625V15.375C9.5 15.9627 9.0283 16.4375 8.44444 16.4375H2.11111C1.52726 16.4375 1.05556 15.9627 1.05556 15.375V10.0625C1.05556 9.4748 1.52726 9 2.11111 9H3.16667V10.8594C3.16667 11.5932 3.75712 12.1875 4.48611 12.1875H6.06944C6.79844 12.1875 7.38889 11.5932 7.38889 10.8594V9H8.44444ZM4.22222 10.8594V9H6.33333V10.8594C6.33333 11.0055 6.21458 11.125 6.06944 11.125H4.48611C4.34097 11.125 4.22222 11.0055 4.22222 10.8594ZM8.44444 7.9375H7.38889H6.33333H4.22222H3.16667H2.11111C0.946701 7.9375 0 8.89043 0 10.0625V15.375C0 16.5471 0.946701 17.5 2.11111 17.5H8.44444C9.60885 17.5 10.5556 16.5471 10.5556 15.375V10.0625C10.5556 8.89043 9.60885 7.9375 8.44444 7.9375Z" fill="#CECECE"/></svg>''',
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // spacing: const Dimension(2).width,
                      // runSpacing: const Dimension(2).height,
                      // alignment: WrapAlignment.spaceBetween,
                      children: [
                        CardImage.medium(
                          backgroundImage:
                              "https://h2online.com.br/app-koud/Rectangle%208.png",
                        ),
                        CardImage.medium(
                          backgroundImage:
                              "https://h2online.com.br/app-koud/Rectangle%209.png",
                        ),
                      ],
                    ),
                  ),
                  Dimension.md.vertical,
                  H2Accordion(
                    title: 'Agenda dos clubes',
                    icon:
                        '''<svg width="15" height="18" viewBox="0 0 15 18" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M4.3125 1.03125C4.3125 0.739062 4.07344 0.5 3.78125 0.5C3.48906 0.5 3.25 0.739062 3.25 1.03125V2.625H2.1875C1.01543 2.625 0.0625 3.57793 0.0625 4.75V5.8125V6.875V15.375C0.0625 16.5471 1.01543 17.5 2.1875 17.5H12.8125C13.9846 17.5 14.9375 16.5471 14.9375 15.375V6.875V5.8125V4.75C14.9375 3.57793 13.9846 2.625 12.8125 2.625H11.75V1.03125C11.75 0.739062 11.5109 0.5 11.2188 0.5C10.9266 0.5 10.6875 0.739062 10.6875 1.03125V2.625H4.3125V1.03125ZM1.125 6.875H13.875V15.375C13.875 15.9627 13.4002 16.4375 12.8125 16.4375H2.1875C1.5998 16.4375 1.125 15.9627 1.125 15.375V6.875ZM2.1875 3.6875H12.8125C13.4002 3.6875 13.875 4.1623 13.875 4.75V5.8125H1.125V4.75C1.125 4.1623 1.5998 3.6875 2.1875 3.6875ZM8.21387 8.18652C7.92168 7.59551 7.07832 7.59551 6.78613 8.18652L6.05566 9.66738L4.42207 9.90644C3.76797 10.0027 3.50898 10.8063 3.98047 11.2645L5.1625 12.4166L4.88359 14.0436C4.7707 14.6943 5.45469 15.1924 6.03906 14.8836L7.5 14.1133L8.96094 14.8836C9.54531 15.1924 10.2293 14.6943 10.1164 14.0436L9.8375 12.4166L11.0195 11.2645C11.491 10.8029 11.232 9.99941 10.5779 9.90644L8.94434 9.66738L8.21387 8.18652ZM6.88242 10.3879L7.5 9.13945L8.11758 10.3879L8.24043 10.6369L8.51602 10.6768L9.89395 10.876L8.89785 11.8488L8.69863 12.0447L8.74512 12.3203L8.98086 13.6949L7.74902 13.0475L7.50332 12.918L7.25762 13.0475L6.02578 13.6949L6.26152 12.3203L6.30801 12.0447L6.10879 11.8488L5.1127 10.876L6.49063 10.6768L6.76621 10.6369L6.88906 10.3879H6.88242Z" fill="#CECECE"/></svg>''',
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // spacing: const Dimension(1.25).width,
                      // runSpacing: const Dimension(1.25).height,
                      // alignment: WrapAlignment.spaceBetween,
                      children: [
                        CardImage.small(
                          action: () {
                            Nav.pushNamed(BaseAppModuleRouting.listSchedule);
                          },
                          backgroundImage:
                              "https://h2online.com.br/app-koud/Rectangle%208-1.png",
                        ),
                        CardImage.small(
                          backgroundImage:
                              "https://h2online.com.br/app-koud/Rectangle%209-1.png",
                          action: () {
                            Nav.pushNamed(BaseAppModuleRouting.listSchedule);
                          },
                        ),
                        CardImage.small(
                          backgroundImage:
                              "https://h2online.com.br/app-koud/Rectangle%2010.png",
                          action: () {
                            Nav.pushNamed(BaseAppModuleRouting.listSchedule);
                          },
                        ),
                      ],
                    ),
                  ),
                  Dimension.md.vertical,
                  H2Accordion(
                    title: 'Agenda do APP Suprema',
                    icon:
                        '''<svg width="19" height="15" viewBox="0 0 19 15" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M6.00575 13.305C6.20466 13.6058 6.62622 13.7097 6.95872 13.5401C6.95872 13.5401 6.96169 13.5401 6.96169 13.5374L12.6884 10.494C12.6884 10.494 12.6914 10.494 12.6914 10.4913C13.0239 10.3081 13.1367 9.91162 12.9407 9.5999L7.99184 1.70576C7.79591 1.39131 7.3595 1.28467 7.01809 1.46514L1.30919 4.50303C0.973718 4.68076 0.854968 5.07451 1.042 5.38623C1.042 5.38897 1.04497 5.38897 1.04497 5.3917L6.00278 13.3022C6.00278 13.305 6.00575 13.305 6.00575 13.3077V13.305ZM5.18934 13.7534C5.18341 13.7452 5.18044 13.737 5.1745 13.7288L0.225593 5.8374C0.219656 5.8292 0.216687 5.821 0.21075 5.81279C-0.231594 5.08819 0.041531 4.1667 0.825281 3.74834L6.552 0.704983C7.34169 0.283889 8.35403 0.532717 8.81122 1.2628L13.769 9.17334C14.2232 9.89795 13.9561 10.8222 13.1753 11.246C13.1693 11.2487 13.1604 11.2542 13.1545 11.2569L7.44559 14.2921C7.43966 14.2948 7.43075 14.3003 7.42481 14.303C6.64106 14.7105 5.6495 14.4671 5.18934 13.7562V13.7534ZM10.6875 14.4999C10.2807 14.4999 9.90966 14.3659 9.62169 14.1444L10.6073 13.6222C10.634 13.6249 10.6607 13.6276 10.6875 13.6276H17.3375C17.7323 13.6276 18.05 13.3351 18.05 12.9714V3.78115C18.05 3.41748 17.7323 3.1249 17.3375 3.1249H11.0734L10.5301 2.25537C10.5806 2.2499 10.634 2.2499 10.6875 2.2499H17.3375C18.2548 2.2499 19 2.93623 19 3.78115V12.9687C19 13.8136 18.2548 14.4999 17.3375 14.4999H10.6875ZM13.9353 4.95147L13.9323 4.9542C13.7334 5.11006 13.7245 5.3917 13.8997 5.56123L14.9654 6.57295L16.0253 5.56123C16.2004 5.39444 16.1915 5.11279 15.9986 4.9542C15.8472 4.83936 15.6007 4.84483 15.4315 5.00069L15.3158 5.11826C15.2267 5.2085 15.102 5.26045 14.9684 5.26319C14.8348 5.26592 14.7101 5.2167 14.6181 5.12647L14.4904 5.00342C14.3153 4.84209 14.0629 4.84483 13.9293 4.95147H13.9353ZM13.3118 4.28975C13.8017 3.89873 14.4786 3.92608 14.9625 4.22959C15.4434 3.92608 16.1173 3.9042 16.6131 4.28701L16.619 4.29248C17.2276 4.78194 17.2573 5.64326 16.7081 6.16826L15.4553 7.36318L15.4493 7.36865C15.1881 7.60928 14.7457 7.62842 14.4697 7.36045L13.2139 6.16826C12.6647 5.64326 12.6914 4.7792 13.3089 4.28975H13.3118ZM7.48716 9.80772L8.91809 9.04756C9.14669 8.92725 9.43466 8.99834 9.56825 9.20889C9.70184 9.41944 9.62169 9.68467 9.39309 9.80772L7.96216 10.5679C7.73356 10.6882 7.44559 10.6171 7.312 10.4065C7.17841 10.196 7.25856 9.93076 7.48716 9.80772ZM6.68559 8.71123L6.86075 7.96201C6.88747 7.8417 6.96763 7.74053 7.08341 7.67764C7.19919 7.61475 7.33278 7.59834 7.46044 7.63389L8.27981 7.85537C8.66278 7.95108 9.05762 7.76787 9.15856 7.49444V7.4917C9.307 7.10342 9.05762 6.67139 8.63903 6.56201L5.96122 5.85928L5.29028 8.34209C5.18637 8.73037 5.46247 9.14326 5.89294 9.2253C6.21653 9.27451 6.57575 9.07217 6.68559 8.7085V8.71123ZM7.60591 8.92725C7.38622 9.6874 6.58763 10.2261 5.72372 10.0894L5.71184 10.0866C4.74106 9.90889 4.1295 9.00108 4.367 8.13155L5.15669 5.2085C5.18637 5.09365 5.2695 4.99522 5.37934 4.93506C5.48919 4.8749 5.62278 4.86123 5.74747 4.89404L8.90325 5.72256C9.83841 5.97139 10.3876 6.91201 10.0551 7.78428C9.75528 8.58819 8.78153 8.89443 8.02153 8.70303L8.01262 8.70029L7.68012 8.61006L7.60887 8.90811C7.60591 8.91358 7.60591 8.92178 7.60294 8.92725H7.60591Z" fill="#CECECE"/></svg>''',
                    content: Column(
                      children: [
                        CardImage.large(
                          backgroundImage:
                              "https://h2online.com.br/app-koud/Rectangle%2011.png",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
