//
//  Utils.m
//  japanese
//
//  Created by Hebe on 2016/10/27.
//  Copyright (c) 2016 Hebe. All rights reserved.
//

#import "Utils.h"
#import "SoundBean.h"

@implementation Utils

+ (NSMutableArray *)getQYSoundArray {
    NSMutableDictionary *allsound = [[NSMutableDictionary alloc] init];


    SoundBean *a = [[SoundBean alloc] initWith:@"あ" pianjia:@"ア" luoma:@"a"];
    SoundBean *i = [[SoundBean alloc] initWith:@"い" pianjia:@"イ" luoma:@"i"];
    SoundBean *u = [[SoundBean alloc] initWith:@"う" pianjia:@"ウ" luoma:@"u"];
    SoundBean *e = [[SoundBean alloc] initWith:@"え" pianjia:@"エ" luoma:@"e"];
    SoundBean *o = [[SoundBean alloc] initWith:@"お" pianjia:@"オ" luoma:@"o"];

    SoundBean *ka = [[SoundBean alloc] initWith:@"か" pianjia:@"カ" luoma:@"ka"];
    SoundBean *ki = [[SoundBean alloc] initWith:@"き" pianjia:@"キ" luoma:@"ki"];
    SoundBean *ku = [[SoundBean alloc] initWith:@"く" pianjia:@"ク" luoma:@"ku"];
    SoundBean *ke = [[SoundBean alloc] initWith:@"け" pianjia:@"ケ" luoma:@"ke"];
    SoundBean *ko = [[SoundBean alloc] initWith:@"こ" pianjia:@"コ" luoma:@"ko"];

    SoundBean *sa = [[SoundBean alloc] initWith:@"さ" pianjia:@"サ" luoma:@"sa"];
    SoundBean *shi = [[SoundBean alloc] initWith:@"し" pianjia:@"シ" luoma:@"shi"];
    SoundBean *su = [[SoundBean alloc] initWith:@"す" pianjia:@"ス" luoma:@"su"];
    SoundBean *se = [[SoundBean alloc] initWith:@"せ" pianjia:@"セ" luoma:@"se"];
    SoundBean *so = [[SoundBean alloc] initWith:@"そ" pianjia:@"ソ" luoma:@"so"];

    SoundBean *ta = [[SoundBean alloc] initWith:@"た" pianjia:@"タ" luoma:@"ta"];
    SoundBean *chi = [[SoundBean alloc] initWith:@"ち" pianjia:@"チ" luoma:@"chi"];
    SoundBean *tsu = [[SoundBean alloc] initWith:@"つ" pianjia:@"ツ" luoma:@"tsu"];
    SoundBean *te = [[SoundBean alloc] initWith:@"て" pianjia:@"テ" luoma:@"te"];
    SoundBean *to = [[SoundBean alloc] initWith:@"と" pianjia:@"ト" luoma:@"to"];

    SoundBean *na = [[SoundBean alloc] initWith:@"な" pianjia:@"ナ" luoma:@"na"];
    SoundBean *ni = [[SoundBean alloc] initWith:@"に" pianjia:@"ニ" luoma:@"ni"];
    SoundBean *nu = [[SoundBean alloc] initWith:@"ぬ" pianjia:@"ヌ" luoma:@"nu"];
    SoundBean *ne = [[SoundBean alloc] initWith:@"ね" pianjia:@"ネ" luoma:@"ne"];
    SoundBean *no = [[SoundBean alloc] initWith:@"の" pianjia:@"ノ" luoma:@"no"];

    SoundBean *ha = [[SoundBean alloc] initWith:@"は" pianjia:@"ハ" luoma:@"ha"];
    SoundBean *hi = [[SoundBean alloc] initWith:@"ひ" pianjia:@"ヒ" luoma:@"hi"];
    SoundBean *fu = [[SoundBean alloc] initWith:@"ふ" pianjia:@"フ" luoma:@"fu"];
    SoundBean *he = [[SoundBean alloc] initWith:@"へ" pianjia:@"ヘ" luoma:@"he"];
    SoundBean *ho = [[SoundBean alloc] initWith:@"ほ" pianjia:@"ホ" luoma:@"ho"];

    SoundBean *ma = [[SoundBean alloc] initWith:@"ま" pianjia:@"マ" luoma:@"ma"];
    SoundBean *mi = [[SoundBean alloc] initWith:@"み" pianjia:@"ミ" luoma:@"mi"];
    SoundBean *mu = [[SoundBean alloc] initWith:@"む" pianjia:@"ム" luoma:@"mu"];
    SoundBean *me = [[SoundBean alloc] initWith:@"め" pianjia:@"メ" luoma:@"me"];
    SoundBean *mo = [[SoundBean alloc] initWith:@"も" pianjia:@"モ" luoma:@"mo"];

    SoundBean *ya = [[SoundBean alloc] initWith:@"や" pianjia:@"ヤ" luoma:@"ya"];
    SoundBean *yu = [[SoundBean alloc] initWith:@"う" pianjia:@"ウ" luoma:@"yu"];
    SoundBean *yo = [[SoundBean alloc] initWith:@"お" pianjia:@"オ" luoma:@"yo"];

    SoundBean *ra = [[SoundBean alloc] initWith:@"ら" pianjia:@"ラ" luoma:@"ra"];
    SoundBean *ri = [[SoundBean alloc] initWith:@"り" pianjia:@"リ" luoma:@"ri"];
    SoundBean *ru = [[SoundBean alloc] initWith:@"る" pianjia:@"ル" luoma:@"ru"];
    SoundBean *re = [[SoundBean alloc] initWith:@"れ" pianjia:@"レ" luoma:@"re"];
    SoundBean *ro = [[SoundBean alloc] initWith:@"ろ" pianjia:@"ロ" luoma:@"ro"];

    SoundBean *wa = [[SoundBean alloc] initWith:@"わ" pianjia:@"ワ" luoma:@"wa"];
    SoundBean *wo = [[SoundBean alloc] initWith:@"を" pianjia:@"ヲ" luoma:@"wo"];

    SoundBean *n = [[SoundBean alloc] initWith:@"ん" pianjia:@"ン" luoma:@"n"];

    NSMutableArray *soundarray = [[NSMutableArray alloc] init];
    [soundarray addObject:a];
    [soundarray addObject:i];
    [soundarray addObject:u];
    [soundarray addObject:e];
    [soundarray addObject:o];

    [soundarray addObject:ka];
    [soundarray addObject:ki];
    [soundarray addObject:ku];
    [soundarray addObject:ke];
    [soundarray addObject:ko];

    [soundarray addObject:sa];
    [soundarray addObject:shi];
    [soundarray addObject:su];
    [soundarray addObject:se];
    [soundarray addObject:so];

    [soundarray addObject:ta];
    [soundarray addObject:chi];
    [soundarray addObject:tsu];
    [soundarray addObject:te];
    [soundarray addObject:to];

    [soundarray addObject:na];
    [soundarray addObject:ni];
    [soundarray addObject:nu];
    [soundarray addObject:ne];
    [soundarray addObject:no];

    [soundarray addObject:ha];
    [soundarray addObject:hi];
    [soundarray addObject:fu];
    [soundarray addObject:he];
    [soundarray addObject:ho];

    [soundarray addObject:ma];
    [soundarray addObject:mi];
    [soundarray addObject:mu];
    [soundarray addObject:me];
    [soundarray addObject:mo];

    [soundarray addObject:ya];
    [soundarray addObject:i];
    [soundarray addObject:yu];
    [soundarray addObject:e];
    [soundarray addObject:yo];

    [soundarray addObject:ra];
    [soundarray addObject:ri];
    [soundarray addObject:ru];
    [soundarray addObject:re];
    [soundarray addObject:ro];

    [soundarray addObject:wa];
    [soundarray addObject:i];
    [soundarray addObject:u];
    [soundarray addObject:e];
    [soundarray addObject:wo];

    [soundarray addObject:n];
    return soundarray;
}

+ (NSMutableArray *)getQAYSoundArray {
    NSMutableArray *soundarray = [[NSMutableArray alloc] init];


    SoundBean *kya = [[SoundBean alloc] initWith:@"きゃ" pianjia:@"キャ" luoma:@"kya"];
    SoundBean *kyu = [[SoundBean alloc] initWith:@"きゅ" pianjia:@"キュ" luoma:@"kyu"];
    SoundBean *kyo = [[SoundBean alloc] initWith:@"きょ" pianjia:@"キョ" luoma:@"kyo"];

    SoundBean *sha = [[SoundBean alloc] initWith:@"しゃ" pianjia:@"シャ" luoma:@"sha"];
    SoundBean *shu = [[SoundBean alloc] initWith:@"しゅ" pianjia:@"シュ" luoma:@"shu"];
    SoundBean *sho = [[SoundBean alloc] initWith:@"しょ" pianjia:@"ショ" luoma:@"sho"];

    SoundBean *cha = [[SoundBean alloc] initWith:@"ちゃ" pianjia:@"チャ" luoma:@"cha"];
    SoundBean *chu = [[SoundBean alloc] initWith:@"ちゅ" pianjia:@"チュ" luoma:@"chu"];
    SoundBean *cho = [[SoundBean alloc] initWith:@"ちょ" pianjia:@"チョ" luoma:@"cho"];

    SoundBean *nya = [[SoundBean alloc] initWith:@"にゃ" pianjia:@"ニャ" luoma:@"nya"];
    SoundBean *nyu = [[SoundBean alloc] initWith:@"にゅ" pianjia:@"ニュ" luoma:@"nyu"];
    SoundBean *nyo = [[SoundBean alloc] initWith:@"にょ" pianjia:@"ニョ" luoma:@"nyo"];

    SoundBean *hya = [[SoundBean alloc] initWith:@"ひゃ" pianjia:@"ヒャ" luoma:@"hya"];
    SoundBean *hyu = [[SoundBean alloc] initWith:@"ひゅ" pianjia:@"ヒュ" luoma:@"hyu"];
    SoundBean *hyo = [[SoundBean alloc] initWith:@"ひょ" pianjia:@"ヒョ" luoma:@"hyo"];

    SoundBean *mya = [[SoundBean alloc] initWith:@"みゃ" pianjia:@"ミャ" luoma:@"mya"];
    SoundBean *myu = [[SoundBean alloc] initWith:@"みゅ" pianjia:@"ミュ" luoma:@"myu"];
    SoundBean *myo = [[SoundBean alloc] initWith:@"みょ" pianjia:@"ミョ" luoma:@"myo"];

    SoundBean *rya = [[SoundBean alloc] initWith:@"りゃ" pianjia:@"リャ" luoma:@"rya"];
    SoundBean *ryu = [[SoundBean alloc] initWith:@"りゅ" pianjia:@"リュ" luoma:@"ryu"];
    SoundBean *ryo = [[SoundBean alloc] initWith:@"りょ" pianjia:@"リョ" luoma:@"ryo"];

    [soundarray addObject:kya];
    [soundarray addObject:kyu];
    [soundarray addObject:kyo];

    [soundarray addObject:sha];
    [soundarray addObject:shu];
    [soundarray addObject:sho];

    [soundarray addObject:cha];
    [soundarray addObject:chu];
    [soundarray addObject:cho];

    [soundarray addObject:nya];
    [soundarray addObject:nyu];
    [soundarray addObject:nyo];

    [soundarray addObject:hya];
    [soundarray addObject:hyu];
    [soundarray addObject:hyo];

    [soundarray addObject:mya];
    [soundarray addObject:myu];
    [soundarray addObject:myo];

    [soundarray addObject:rya];
    [soundarray addObject:ryu];
    [soundarray addObject:ryo];

    return soundarray;
}

+ (NSMutableArray *)getZYSoundArray {

    SoundBean *ga = [[SoundBean alloc] initWith:@"が" pianjia:@"ガ" luoma:@"ga"];
    SoundBean *gi = [[SoundBean alloc] initWith:@"ぎ" pianjia:@"ギ" luoma:@"gi"];
    SoundBean *gu = [[SoundBean alloc] initWith:@"ぐ" pianjia:@"グ" luoma:@"gu"];
    SoundBean *ge = [[SoundBean alloc] initWith:@"げ" pianjia:@"ゲ" luoma:@"ge"];
    SoundBean *go = [[SoundBean alloc] initWith:@"ご" pianjia:@"ゴ" luoma:@"go"];


    SoundBean *za = [[SoundBean alloc] initWith:@"ざ" pianjia:@"ザ" luoma:@"za"];
    SoundBean *zi = [[SoundBean alloc] initWith:@"じ" pianjia:@"ジ" luoma:@"ji"];
    SoundBean *zu = [[SoundBean alloc] initWith:@"ず" pianjia:@"ズ" luoma:@"zu"];
    SoundBean *ze = [[SoundBean alloc] initWith:@"ぜ" pianjia:@"ゼ" luoma:@"ze"];
    SoundBean *zo = [[SoundBean alloc] initWith:@"ぞ" pianjia:@"ゾ" luoma:@"zo"];

    SoundBean *da = [[SoundBean alloc] initWith:@"だ" pianjia:@"ダ" luoma:@"da"];
    SoundBean *di = [[SoundBean alloc] initWith:@"ぢ" pianjia:@"ヂ" luoma:@"ji"];
    SoundBean *du = [[SoundBean alloc] initWith:@"づ" pianjia:@"ヅ" luoma:@"zu"];
    SoundBean *de = [[SoundBean alloc] initWith:@"で" pianjia:@"デ" luoma:@"de"];
    SoundBean *dou = [[SoundBean alloc] initWith:@"ど" pianjia:@"ド" luoma:@"do"];

    SoundBean *ba = [[SoundBean alloc] initWith:@"ば" pianjia:@"バ" luoma:@"ba"];
    SoundBean *bi = [[SoundBean alloc] initWith:@"び" pianjia:@"ビ" luoma:@"bi"];
    SoundBean *bu = [[SoundBean alloc] initWith:@"ぶ" pianjia:@"ブ" luoma:@"bu"];
    SoundBean *be = [[SoundBean alloc] initWith:@"べ" pianjia:@"ベ" luoma:@"be"];
    SoundBean *bo = [[SoundBean alloc] initWith:@"ぼ" pianjia:@"ボ" luoma:@"bo"];

    SoundBean *pa = [[SoundBean alloc] initWith:@"ぱ" pianjia:@"パ" luoma:@"pa"];
    SoundBean *pi = [[SoundBean alloc] initWith:@"ぴ" pianjia:@"ピ" luoma:@"pi"];
    SoundBean *pu = [[SoundBean alloc] initWith:@"ぷ" pianjia:@"プ" luoma:@"pu"];
    SoundBean *pe = [[SoundBean alloc] initWith:@"ぺ" pianjia:@"ペ" luoma:@"pe"];
    SoundBean *po = [[SoundBean alloc] initWith:@"ぽ" pianjia:@"ポ" luoma:@"po"];

    NSMutableArray *soundarray = [[NSMutableArray alloc] init];

    [soundarray addObject:ga];
    [soundarray addObject:gi];
    [soundarray addObject:gu];
    [soundarray addObject:ge];
    [soundarray addObject:go];

    [soundarray addObject:za];
    [soundarray addObject:zi];
    [soundarray addObject:zu];
    [soundarray addObject:ze];
    [soundarray addObject:zo];

    [soundarray addObject:da];
    [soundarray addObject:di];
    [soundarray addObject:du];
    [soundarray addObject:de];
    [soundarray addObject:dou];

    [soundarray addObject:ba];
    [soundarray addObject:bi];
    [soundarray addObject:bu];
    [soundarray addObject:be];
    [soundarray addObject:bo];

    [soundarray addObject:pa];
    [soundarray addObject:pi];
    [soundarray addObject:pu];
    [soundarray addObject:pe];
    [soundarray addObject:po];

    return soundarray;
}

+ (NSMutableArray *)getZAYSoundArray {
    NSMutableArray *soundarray = [[NSMutableArray alloc] init];

    SoundBean *gya = [[SoundBean alloc] initWith:@"ぎゃ" pianjia:@"ギャ" luoma:@"gya"];
    SoundBean *gyu = [[SoundBean alloc] initWith:@"ぎゅ" pianjia:@"ギュ" luoma:@"gyu"];
    SoundBean *gyo = [[SoundBean alloc] initWith:@"ぎょ" pianjia:@"ギョ" luoma:@"gyo"];

    SoundBean *ja = [[SoundBean alloc] initWith:@"じゃ" pianjia:@"ジャ" luoma:@"ja"];
    SoundBean *ju = [[SoundBean alloc] initWith:@"じゅ" pianjia:@"ジュ" luoma:@"ju"];
    SoundBean *jo = [[SoundBean alloc] initWith:@"じょ" pianjia:@"ジョ" luoma:@"jo"];

    SoundBean *bya = [[SoundBean alloc] initWith:@"びゃ" pianjia:@"ビャ" luoma:@"bya"];
    SoundBean *byu = [[SoundBean alloc] initWith:@"びゅ" pianjia:@"ビュ" luoma:@"byu"];
    SoundBean *byo = [[SoundBean alloc] initWith:@"びょ" pianjia:@"ビョ" luoma:@"byo"];

    SoundBean *pya = [[SoundBean alloc] initWith:@"ぴゃ" pianjia:@"ピャ" luoma:@"pya"];
    SoundBean *pyu = [[SoundBean alloc] initWith:@"ぴゅ" pianjia:@"ピュ" luoma:@"pyu"];
    SoundBean *pyo = [[SoundBean alloc] initWith:@"ぴょ" pianjia:@"ピョ" luoma:@"pyo"];

    [soundarray addObject:gya];
    [soundarray addObject:gyu];
    [soundarray addObject:gyo];

    [soundarray addObject:ja];
    [soundarray addObject:ju];
    [soundarray addObject:jo];

    [soundarray addObject:bya];
    [soundarray addObject:byu];
    [soundarray addObject:byo];

    [soundarray addObject:pya];
    [soundarray addObject:pyu];
    [soundarray addObject:pyo];

    return  soundarray;
}


@end
