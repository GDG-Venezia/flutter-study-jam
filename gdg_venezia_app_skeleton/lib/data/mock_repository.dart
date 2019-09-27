import 'package:gdg_venezia_app_skeleton/data/repository.dart';
import 'package:gdg_venezia_app_skeleton/data/entities/about.dart';
import 'package:gdg_venezia_app_skeleton/data/entities/event.dart';
import 'package:gdg_venezia_app_skeleton/data/entities/photo.dart';
import 'package:gdg_venezia_app_skeleton/data/entities/social.dart';
import 'package:gdg_venezia_app_skeleton/data/entities/team_member.dart';

/// A Mock repository that returns hardcoded data
class MockRepository extends Repository {
  /// Implementation of the Singleton. The factory keyword provides a construct
  /// that doesn't always create a new instance of the class
  static final MockRepository _repository = new MockRepository._internal();

  factory MockRepository() {
    return _repository;
  }

  // Internal constructor
  MockRepository._internal();

  final int networkDelay = 2;

  @override
  Future<List<Event>> fetchEvents() {
    final events = [
      Event(title: "DevFest Veneto 19", dateMillis: 1573891200000),
      Event(
          title:
              "GDG Venezia Tech Talks: Flutter or React Native, a cross-platform dilemma",
          dateMillis: 1559754000000),
      Event(
          title: "Google I/O Extended Venezia 2019", dateMillis: 1557248400000),
      Event(title: "Hi, have you met Flutter?", dateMillis: 1549722600000),
    ];

    // Returns the data after some seconds to fake a network call
    return Future.delayed(Duration(seconds: networkDelay), () => events);
  }

  @override
  Future<About> fetchAbout() {
    final teamList = [
      TeamMember(
          firstName: "Andrea",
          lastName: "Maglie",
          pictureUrl: "https://lh3.googleusercontent.com/yBO7CRJ5oHduGdIQDAhxwL_WI-N71bnQk9_ZsXZldfdrkOZF58UQqk8nhEwzdoYu6RwjNiex3kke4DCMxToPm7LVcoOHpgNRVBMdz8ihayuaITwmsCVQrnngS0dgMfNC-c7XXRFspzqGoG0uM0aJA4PiM0nILrtXVaf5bpPeJ-XA91OP46RoOiBdAOyso55yCbT8BVxMu9g8TCk7azAkr-IzV8bUWEfKzhS5CJ8-IlD3fKfnZeIv3_uJsekquTpiagshAoKAwj7WvYTb7A4x1qnBraA4ZeJQZsij4wfyWboSAtYu5c8mLsyzFzg2ObPlEoI3wf-tVCgPxZbMdWmVPmx4YbZw4wcqqdRVYMWhl9wHIhuwLP5fz77o_ITIcxO7uB8fAMts28uWfcjZtR-J1BbrmQs3CWUK5u_VK1ncUWbxHyh8QDL0jVhhFClw3DuqExI8A1CLHIbwAObYPUA45mml7oVsluymeNtcZgsx_uI_cToQavsuFf8qiu7X7MZVeTbL5pHUlOgM1yEFlErvW2MscefF1Y6jV2Y4F4D0Di6XXAk4IVRi--M7xqKgApprdxKRjdxoZTI8DI5SpSnMhtleqo38-fNDc_3x0Oxa_3cm9PlOa4nhDwdCEANlR4CIbvUpvdZ3I-0A9b_upASjSdhWRDH15xybC5eKS7dg4SfWXOlAE7px8Iw=s370-no",
          shortDescription:
              "Sed ut perspiciatis unde omnis iste natus error sit voluptatem",
          longDescription:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ",
          twitterUrl: "https://twitter.com/TechIsFun",
          linkedinUrl: ""),
      TeamMember(
          firstName: "Marco",
          lastName: "Gomiero",
          pictureUrl: "https://lh3.googleusercontent.com/i9D8KEWyw_AXuFj1GMcDbYV5Aml6mZGsN2HYjx_KNZwXIQIZndK2ochLkp1R95K8VujKHJA0vhDv0SEzIQiabbnVNq39qjGQHYsMRKKlQJ9V6LtK-px2f7UZuAWUobFXF9LiFQibBawPEun7rAg03HTQNOJsWUJ8WsLhyFn5nFXhvHdviZpQ_jZfcE7T3az67lY5HkXPjdFKh6TqVusuAXLlIHYwyYTMARWkHeKcIuhEyvqf_WYZR8q7LnZwFakpeQl6NpBz7DG_AnCiNAeuiMHxiHrURhIpq_nnuWSvbGpJTsU69UBJqz6BkMJN_GVuZAigAgj-8HZnqleHALs6pYsPEM90NKWq-ljjpR3KoQEhVVgE9FSEb3RQ_H9lGcgJpFFxsJL_ifJa9TbPJonqIcQaV8ULCnaLeMOg-i1N-ugjBKTTyKwbn4FN82mD1NjlxbEak5OikXPY6lgfgcsxF0lVda9keIqeQ32RyPCZo-yvTSbeLWpPgTXnaVWCyxsa5ohUcSpJpHAD8PDsjL5yjjbjr1sgFwHtUR_hhDRlL_IMtl4-QCBO2aqXHNJNCAu08cvGISE_aeqhBEKgJMfcdMSpukByuTQD3tH-1W8melrymGKei_C5geelS2l-5zdF1DojiVXT-2WaiEmOv9T6HAeSGqHNteaAn8p7xWv_YYtm-PKthNOqFXE=w871-h867-no",
          shortDescription: "Lorem ipsum",
          longDescription:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ",
          twitterUrl: "https://twitter.com/marcoGomier",
          linkedinUrl: ""),
      TeamMember(
          firstName: "Simone",
          lastName: "Formica",
          pictureUrl: "https://lh3.googleusercontent.com/iAKMH0Sc49SXMs9QNwtVBdD_X8e5VpnVzW94vCYcl8qgMxVCq6w5n9xrH6VKjZv_A-I52CgaXkCly_SS0_82kw6c3NlvbsEmaBmwkiTULDAfB3cjj0xV0NXl-2zC-wBRO9NEWeKGpL0ucFDbqeRmZoLWLPKYuwUpRlytVdv0c0HUW4YVWuw4OPPeZyBJDdI66Yzgwk3GTQQoEj_xQaSX1gYqPURilHQT-Z4CqEekpCQaBNhl0v0JC3KcAPoH9Ej30Z1V6C0rHh3aUIkGC7qc-RqBSf2NQz9v8qxbwFaFXfVHXERTkrdmXrXQWdA0VUKZLc0trvIPOKXWFLHfb3gO5qyVe59XGT_eQEtRoD29dDFg4A0kGr4t4IcXuZWXJATbrzVmBzcV076aoCP2PgxgZBHemVz6HH1AtFF__mr44VOeFoF1r7zZFWoJkvazGtH_yaiq1pqN1R1vG1cjoTubrk4aa-qVqDI-kZnk1rlItmr29etk_27PMFgD8NaACA6Wye13hJJXdMUl0V-G_CfgAr-lutILQIwH6rcSOszj651CxcBFZj-lwXQYOfphyaJByOuGwdsbkr4qbSisDt9Nna5dh7mnhGLQlQVPopudfdKTQCjR3TUdR1AOsLnax3vRLk6ogmiex2hiyHobTnaFFsvaGVAXpEKlkuzlHZVGNyx1Elh4ORAeNMM=s400-no",
          shortDescription: "Consectetur adipiscing elit",
          longDescription:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ",
          twitterUrl: "https://twitter.com/SimoneFormica",
          linkedinUrl: ""),
      TeamMember(
          firstName: "Omar",
          lastName: "Al Bukhari",
          pictureUrl: "https://lh3.googleusercontent.com/KdS2kXFw74fDh66RifuKvYa45n5AG0G9k7Z7L6p_RwAObvJiXt9-Rk_fubboVyKodFa93FbbMyRbi6QCOgVRbb7LRjHIbYVso_B1DXSHY4NJnT2WKDIDf9Hha-eB1vS2Tjytyrh0VB6uGSYkFckcbF3Fda1ZhGWaQNvOVCHHk9piEQ_QoUGthAyBfJym6-zJqxE_XZar6M1hocOrkGh1lLS4xEei0NrWwL6QMaaDP0e5jIyN3R7A3blICin6-l-7b-MtQCT0BeZtGt85OXa7-TefYwQCJhENu4k2sdJGJk4ntfwOR33ukpqk8kL0yZq_3ds---ymC6dMfpqB7gBDoBrQVk9H3AWr51mEXw6mqLibYze03-QkDaPQcpmDIwZpmu74VbvjlPsj0N_85ZNO-8rt_M51uTDbkGaRMG6MFHHimbDbOyiYGsaLKaFnMebgmHTlParyLRm0BZQCSLa8E-oHGQroqKYbN5ek7xuY7jTjl5cXcyNyUrixKX0OoShhSu3avSLMLGc7dgKfVONMrqakRb1RbBv3Pqq0dJNMdrVUQYqLajgSXjSzWm6_2tkzjFTa3pr1iupMoTL-mcFCG2WDdaa2Arn6Y4U3fhvuLi5NicAg8uV_kj7tOFZNR11lVZEez_u1qvAqWfhBSUOE9fcR2ZEJaIrV718Zij8K3fuNf26ppGgeq9k=s200-no",
          shortDescription: "Excepteur sint occaecat cupidatat non proident",
          longDescription:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ",
          twitterUrl: "",
          linkedinUrl: "https://linkedin.com/in/omar-al-bukhari-01776b111")
    ];
    final about = About(
        description:
            "Il Google Developers Group (GDG) Venezia si propone come punto di incontro per gli appassionati di tecnologie e piattaforme Google, come Android, Firebase, Angular, Chrome, Google Apps, GWT, Cloud Platform... ma non solo questo!",
        teamList: teamList);

    // Returns the data after some seconds to fake a network call
    return Future.delayed(Duration(seconds: networkDelay), () => about);
  }

  @override
  Future<List<Photo>> fetchPhotos() {
    // TODO: add more photos
    final photoList = [
      Photo(
          title: "DevFest 2018",
          tags: ["devfest"],
          url:
              "https://lh3.googleusercontent.com/Ce4fWZkPbgHo2hOwNRTtSILXUC9G4qLaMxEFZ9X4lNdMFGBG0d8ZK876mtevnwrsyyHRgrB3iL0dPpcz6GxiCrTY2djh1Ho99NWd1dsjv6bJncVeqXP2MM12gc5ieo8_qwNRPK5js1TOnY-WpkGuZ45ErNzxAWepMj-FhQnJieJPF-oZQMibjZTiC4D642bkjDdUs4iLNcLmXF_Jioua1Y5GZwDeJm-DvN6wkq6tmu4fREU1e2p2bLxsgbkDgk3uDseLcQJNjXt9QQMSgVZGi0VdhhmggGPW2aFnBoWnWS__UOLQ3y2HbDlOmgOnF338Ke4J1TEO_cOjQ4AaQHAaeFejxXw5V-JPk3piUO3oYKUo0GhrCq7RIM-9zKzkFBIIQB9bTvosJgeV13MfqxtEr0oE8m4JZWaoZgNTQ_LO9Nx4263s_7LZMI4QcFEpO5RkbYgtFkFa0Vas8xjNH3tlm2fkylbyFfaEhNVoPVsErvPm4hLLKybk3qMvU4f-kRmp5eDlXHWmrGybF0tOCtlfS1LVKDlhVQ7-Pul-5f-sSG_GNiO15ezXDZf_nc5QwuLYiqxv-Vfo66vYBdTNDsgliA5wAMgDYxwZEqX9-DeCNXL0Q22uoSC3Pm6eI83BWqyAgk5XRwmvV7k9HAohlTQyZjLdsXqKMAu2wbzJGgLtTUjAjEV8iTqNDHWq2MGOar9oKvF26MUzZicTIhmVjuyWTgYU:w2444-h1832-no"),
      Photo(
          title: "DevFest 2018",
          tags: ["devfest"],
          url:
              "https://lh3.googleusercontent.com/7dwwKmEQBe8KKbBArvTw2O2aZkOGr2QSmyJIzusHDFgLTV1Otynmr_WoPObHlhL79_l71acbyGSjKXL4AqRJ8xfjgxONXpgUC4U194pr9JiOxwNtOBexIJ03PF4TONc2tNMFr-GGijXxdxpeEYoiUcQKZGiQDh1OpG234HmtXwDa8yWCpCeqUWNpsTKVZ2y2HXNid4FCOq8GkheIqe1mWM5zEbqIxYCpHHz9wm36UuVJprwu08AzoO8xJXKZA0yW7ICEqH5qsOR4ezNVubuATQjs2P675NTtrIC254XCC6nACjkJ4V_vSHZSU5eb0n5_2mUzWZ2QXJtFvkZV4NcT1jAkDMXsFXuB4J5CR7PFkGOOJzHLvkpfU36UceKoa80fYHtEbdgcKxYQFzV-rGkXkPC2lplm_nTGIfb87AEhPhSf5xkirYbg91ATUyZNEvfxPF3WcNPgoUs2W3Eq48y0MjKt0KsG8lL94DVo53fdKDnyevQmRG44MuxLXb-Dy_3NLhFY1VgoYw5j4jrViD3j5OzUs4abSbV9-zxQ2Xnwx5c2Av9G7EOfbTOvWjkG457_FLmHsWJ3U2ETSmJ4kepFnq4pCX1T9xA-3aRziFbkjbCTpgu4a3eTP0yop13E8ESYVn4plSKHqdk8CuCfru9SRdDD9WfFaQ1WEQj1Q-ymn9HQqIpu5gELEvCELUTpg2eL9tH7TxLQeLvfEkOphH5b-R6e7Q:w635-h291-no"),
      Photo(
          title: "DevFest 2018",
          tags: ["devfest"],
          url:
              "https://lh3.googleusercontent.com/kLBpOZhrzJcTdW3wyjOTi7AzxSxdILXqqiAn8ik9vb0DKgVkUQsp-ae0T5fN6jHR7_OYpZ44OSMqXDPv_ACASXgw-R7-VKVy1zzgvsantzhfcHuqAlm9SPhnLs5BGT4HvcNiJdMoQsCNSul8_ijqvxyI3rHUxXGsi48NPfrA-ha7PFaaNGVTRHwqu9LPXsCxZQXPKPn1oI5OTEyizHSOaf3G2wjWaPcwnEQYNwGFi89s7hOCK9D3jOntj9fxHeKo-7B3vLh0teRc2gYG0lzb4upUSRQTnDBmXCebYDu1rApDYM4iWKsLcwSls8eQS97yQaAcypAQftcgrIcRp7a7y1pJARepSXY1yYgo1qOyOHHQJnJ-3CkK7fCr3QXqFoncM-lFCxgvHKSNkG3Dp77kzyhdera3jLkwkwA9ZUdSC9DNLlt8ulPmXcj6WPF9rroWQqP9JGzZbzhwhe5m4rjX6udLqSbkbmWjO7xV39dTnq8-vtCFSmcxWjvjFA9rihoGTL04y8R_1gvDwvaG7gXNLzOWSnHmCUW5cdDDAftxi_QNYyuIpm_vAD_kSHpME0fS_SWOlqsiQxXBDls6N1V-V5oPfEufn_dUkHwuGlpQn36D4MAVGRD9QlRnBBjYhtZmOJb1KorrmDbFi6KcIqbOO9Ja1uoE0nleiAasKu84NAdDrHBUK70ffdUBgzvAAlzhbGbYdei5NSAbw1E_AqqEVVPTqA:w1100-h733-no")
    ];

    // Returns the data after some seconds to fake a network call
    return Future.delayed(Duration(seconds: networkDelay), () => photoList);
  }

  @override
  Future<List<Social>> fetchSocial() {
    final socialList = [
      Social(
          title: "Facebook",
          code: "facebook",
          url: "https://www.facebook.com/gdgvenezia"),
      Social(
          title: "Twitter",
          code: "twitter",
          url: "https://twitter.com/gdgvenezia"),
      Social(
          title: "YouTube",
          code: "youtube",
          url: "https://www.youtube.com/channel/UCnXHsg8plcHc_NuCETV2k6Q"),
      Social(
          title: "Meetup",
          code: "meetup",
          url: "https://www.meetup.com/it-IT/GDG-Venezia"),
      Social(
          title: "Instagram",
          code: "instagram",
          url: "https://www.instagram.com/gdg_venezia"),
      Social(
          title: "GitHub",
          code: "github",
          url: "https://github.com/GDG-Venezia"),
      Social(
          title: "Telegram",
          code: "telegram",
          url: "https://telegram.me/joinchat/CrhySAbNTvs7BZACfpQyyQ"),
      Social(title: "Mail", code: "mail", url: "mailto:veneziagdg@gmail.com")
    ];

    // Returns the data after some seconds to fake a network call
    return Future.delayed(Duration(seconds: networkDelay), () => socialList);
  }
}
