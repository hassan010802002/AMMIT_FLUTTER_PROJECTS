/// name : "London"
/// local_names : {"sh":"London","kl":"London","de":"London","to":"Lonitoni","wa":"Londe","ps":"لندن","zh":"伦敦","sn":"London","ascii":"London","bh":"लंदन","hy":"Լոնդոն","te":"లండన్","gu":"લંડન","sv":"London","el":"Λονδίνο","nn":"London","he":"לונדון","feature_name":"London","rm":"Londra","hu":"London","ha":"Landan","pt":"Londres","da":"London","ug":"لوندۇن","pa":"ਲੰਡਨ","ku":"London","gv":"Lunnin","bm":"London","se":"London","sk":"Londýn","tt":"Лондон","ne":"लन्डन","lb":"London","gl":"Londres","ko":"런던","tw":"London","sa":"लन्डन्","si":"ලන්ඩන්","ay":"London","be":"Лондан","ml":"ലണ്ടൻ","ff":"London","ro":"Londra","hi":"लंदन","fj":"Lodoni","cs":"Londýn","ba":"Лондон","ln":"Lóndɛlɛ","uk":"Лондон","oc":"Londres","mt":"Londra","so":"London","ja":"ロンドン","gn":"Lóndyre","wo":"Londar","pl":"Londyn","vi":"Luân Đôn","ur":"علاقہ لندن","it":"Londra","jv":"London","mk":"Лондон","tg":"Лондон","or":"ଲଣ୍ଡନ","fr":"Londres","sr":"Лондон","ka":"ლონდონი","mn":"Лондон","my":"လန်ဒန်မြို့","bg":"Лондон","kk":"Лондон","co":"Londra","sl":"London","ta":"இலண்டன்","nl":"Londen","ht":"Lonn","mi":"Rānana","om":"Landan","sc":"Londra","yo":"Lọndọnu","fo":"London","lt":"Londonas","ce":"Лондон","ca":"Londres","cy":"Llundain","li":"Londe","an":"Londres","st":"London","uz":"London","bn":"লন্ডন","kn":"ಲಂಡನ್","id":"London","is":"London","ru":"Лондон","am":"ለንደን","af":"Londen","eo":"Londono","ee":"London","fy":"Londen","qu":"London","sq":"Londra","br":"Londrez","tr":"Londra","bo":"ལོན་ཊོན།","ar":"لندن","vo":"London","mg":"Lôndôna","ab":"Лондон","zu":"ILondon","tl":"Londres","th":"ลอนดอน","sw":"London","lv":"Londona","ky":"Лондон","ny":"London","fa":"لندن","es":"Londres","ig":"London","bs":"London","sd":"لنڊن","sm":"Lonetona","km":"ឡុងដ៍","kv":"Лондон","ie":"London","et":"London","av":"Лондон","yi":"לאנדאן","ia":"London","cu":"Лондонъ","az":"London","kw":"Loundres","os":"Лондон","hr":"London","mr":"लंडन","ms":"London","nv":"Tooh Dineʼé Bikin Haalʼá","bi":"London","na":"London","eu":"Londres","fi":"Lontoo","tk":"London","en":"London","no":"London","ga":"Londain","io":"London","cv":"Лондон","lo":"ລອນດອນ","su":"London","gd":"Lunnainn"}
/// lat : 51.5073219
/// lon : -0.1276474
/// country : "GB"
/// state : "England"

class LocationsModel {
  LocationsModel({
      String? name, 
      LocalNames? localNames, 
      num? lat, 
      num? lon, 
      String? country, 
      String? state,}){
    _name = name;
    _localNames = localNames;
    _lat = lat;
    _lon = lon;
    _country = country;
    _state = state;
}

  LocationsModel.fromJson(dynamic json) {
    _name = json['name'];
    _localNames = json['local_names'] != null ? LocalNames.fromJson(json['local_names']) : null;
    _lat = json['lat'];
    _lon = json['lon'];
    _country = json['country'];
    _state = json['state'];
  }
  String? _name;
  LocalNames? _localNames;
  num? _lat;
  num? _lon;
  String? _country;
  String? _state;
LocationsModel copyWith({  String? name,
  LocalNames? localNames,
  num? lat,
  num? lon,
  String? country,
  String? state,
}) => LocationsModel(  name: name ?? _name,
  localNames: localNames ?? _localNames,
  lat: lat ?? _lat,
  lon: lon ?? _lon,
  country: country ?? _country,
  state: state ?? _state,
);
  String? get name => _name;
  LocalNames? get localNames => _localNames;
  num? get lat => _lat;
  num? get lon => _lon;
  String? get country => _country;
  String? get state => _state;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    if (_localNames != null) {
      map['local_names'] = _localNames?.toJson();
    }
    map['lat'] = _lat;
    map['lon'] = _lon;
    map['country'] = _country;
    map['state'] = _state;
    return map;
  }

}

/// sh : "London"
/// kl : "London"
/// de : "London"
/// to : "Lonitoni"
/// wa : "Londe"
/// ps : "لندن"
/// zh : "伦敦"
/// sn : "London"
/// ascii : "London"
/// bh : "लंदन"
/// hy : "Լոնդոն"
/// te : "లండన్"
/// gu : "લંડન"
/// sv : "London"
/// el : "Λονδίνο"
/// nn : "London"
/// he : "לונדון"
/// feature_name : "London"
/// rm : "Londra"
/// hu : "London"
/// ha : "Landan"
/// pt : "Londres"
/// da : "London"
/// ug : "لوندۇن"
/// pa : "ਲੰਡਨ"
/// ku : "London"
/// gv : "Lunnin"
/// bm : "London"
/// se : "London"
/// sk : "Londýn"
/// tt : "Лондон"
/// ne : "लन्डन"
/// lb : "London"
/// gl : "Londres"
/// ko : "런던"
/// tw : "London"
/// sa : "लन्डन्"
/// si : "ලන්ඩන්"
/// ay : "London"
/// be : "Лондан"
/// ml : "ലണ്ടൻ"
/// ff : "London"
/// ro : "Londra"
/// hi : "लंदन"
/// fj : "Lodoni"
/// cs : "Londýn"
/// ba : "Лондон"
/// ln : "Lóndɛlɛ"
/// uk : "Лондон"
/// oc : "Londres"
/// mt : "Londra"
/// so : "London"
/// ja : "ロンドン"
/// gn : "Lóndyre"
/// wo : "Londar"
/// pl : "Londyn"
/// vi : "Luân Đôn"
/// ur : "علاقہ لندن"
/// it : "Londra"
/// jv : "London"
/// mk : "Лондон"
/// tg : "Лондон"
/// or : "ଲଣ୍ଡନ"
/// fr : "Londres"
/// sr : "Лондон"
/// ka : "ლონდონი"
/// mn : "Лондон"
/// my : "လန်ဒန်မြို့"
/// bg : "Лондон"
/// kk : "Лондон"
/// co : "Londra"
/// sl : "London"
/// ta : "இலண்டன்"
/// nl : "Londen"
/// ht : "Lonn"
/// mi : "Rānana"
/// om : "Landan"
/// sc : "Londra"
/// yo : "Lọndọnu"
/// fo : "London"
/// lt : "Londonas"
/// ce : "Лондон"
/// ca : "Londres"
/// cy : "Llundain"
/// li : "Londe"
/// an : "Londres"
/// st : "London"
/// uz : "London"
/// bn : "লন্ডন"
/// kn : "ಲಂಡನ್"
/// id : "London"
/// is : "London"
/// ru : "Лондон"
/// am : "ለንደን"
/// af : "Londen"
/// eo : "Londono"
/// ee : "London"
/// fy : "Londen"
/// qu : "London"
/// sq : "Londra"
/// br : "Londrez"
/// tr : "Londra"
/// bo : "ལོན་ཊོན།"
/// ar : "لندن"
/// vo : "London"
/// mg : "Lôndôna"
/// ab : "Лондон"
/// zu : "ILondon"
/// tl : "Londres"
/// th : "ลอนดอน"
/// sw : "London"
/// lv : "Londona"
/// ky : "Лондон"
/// ny : "London"
/// fa : "لندن"
/// es : "Londres"
/// ig : "London"
/// bs : "London"
/// sd : "لنڊن"
/// sm : "Lonetona"
/// km : "ឡុងដ៍"
/// kv : "Лондон"
/// ie : "London"
/// et : "London"
/// av : "Лондон"
/// yi : "לאנדאן"
/// ia : "London"
/// cu : "Лондонъ"
/// az : "London"
/// kw : "Loundres"
/// os : "Лондон"
/// hr : "London"
/// mr : "लंडन"
/// ms : "London"
/// nv : "Tooh Dineʼé Bikin Haalʼá"
/// bi : "London"
/// na : "London"
/// eu : "Londres"
/// fi : "Lontoo"
/// tk : "London"
/// en : "London"
/// no : "London"
/// ga : "Londain"
/// io : "London"
/// cv : "Лондон"
/// lo : "ລອນດອນ"
/// su : "London"
/// gd : "Lunnainn"

class LocalNames {
  LocalNames({
      String? sh, 
      String? kl, 
      String? de, 
      String? to, 
      String? wa, 
      String? ps, 
      String? zh, 
      String? sn, 
      String? ascii, 
      String? bh, 
      String? hy, 
      String? te, 
      String? gu, 
      String? sv, 
      String? el, 
      String? nn, 
      String? he, 
      String? featureName, 
      String? rm, 
      String? hu, 
      String? ha, 
      String? pt, 
      String? da, 
      String? ug, 
      String? pa, 
      String? ku, 
      String? gv, 
      String? bm, 
      String? se, 
      String? sk, 
      String? tt, 
      String? ne, 
      String? lb, 
      String? gl, 
      String? ko, 
      String? tw, 
      String? sa, 
      String? si, 
      String? ay, 
      String? be, 
      String? ml, 
      String? ff, 
      String? ro, 
      String? hi, 
      String? fj, 
      String? cs, 
      String? ba, 
      String? ln, 
      String? uk, 
      String? oc, 
      String? mt, 
      String? so, 
      String? ja, 
      String? gn, 
      String? wo, 
      String? pl, 
      String? vi, 
      String? ur, 
      String? it, 
      String? jv, 
      String? mk, 
      String? tg, 
      String? or, 
      String? fr, 
      String? sr, 
      String? ka, 
      String? mn, 
      String? my, 
      String? bg, 
      String? kk, 
      String? co, 
      String? sl, 
      String? ta, 
      String? nl, 
      String? ht, 
      String? mi, 
      String? om, 
      String? sc, 
      String? yo, 
      String? fo, 
      String? lt, 
      String? ce, 
      String? ca, 
      String? cy, 
      String? li, 
      String? an, 
      String? st, 
      String? uz, 
      String? bn, 
      String? kn, 
      String? id, 
      String? iss,
      String? ru, 
      String? am, 
      String? af, 
      String? eo, 
      String? ee, 
      String? fy, 
      String? qu, 
      String? sq, 
      String? br, 
      String? tr, 
      String? bo, 
      String? ar, 
      String? vo, 
      String? mg, 
      String? ab, 
      String? zu, 
      String? tl, 
      String? th, 
      String? sw, 
      String? lv, 
      String? ky, 
      String? ny, 
      String? fa, 
      String? es, 
      String? ig, 
      String? bs, 
      String? sd, 
      String? sm, 
      String? km, 
      String? kv, 
      String? ie, 
      String? et, 
      String? av, 
      String? yi, 
      String? ia, 
      String? cu, 
      String? az, 
      String? kw, 
      String? os, 
      String? hr, 
      String? mr, 
      String? ms, 
      String? nv, 
      String? bi, 
      String? na, 
      String? eu, 
      String? fi, 
      String? tk, 
      String? en, 
      String? no, 
      String? ga, 
      String? io, 
      String? cv, 
      String? lo, 
      String? su, 
      String? gd,}){
    _sh = sh;
    _kl = kl;
    _de = de;
    _to = to;
    _wa = wa;
    _ps = ps;
    _zh = zh;
    _sn = sn;
    _ascii = ascii;
    _bh = bh;
    _hy = hy;
    _te = te;
    _gu = gu;
    _sv = sv;
    _el = el;
    _nn = nn;
    _he = he;
    _featureName = featureName;
    _rm = rm;
    _hu = hu;
    _ha = ha;
    _pt = pt;
    _da = da;
    _ug = ug;
    _pa = pa;
    _ku = ku;
    _gv = gv;
    _bm = bm;
    _se = se;
    _sk = sk;
    _tt = tt;
    _ne = ne;
    _lb = lb;
    _gl = gl;
    _ko = ko;
    _tw = tw;
    _sa = sa;
    _si = si;
    _ay = ay;
    _be = be;
    _ml = ml;
    _ff = ff;
    _ro = ro;
    _hi = hi;
    _fj = fj;
    _cs = cs;
    _ba = ba;
    _ln = ln;
    _uk = uk;
    _oc = oc;
    _mt = mt;
    _so = so;
    _ja = ja;
    _gn = gn;
    _wo = wo;
    _pl = pl;
    _vi = vi;
    _ur = ur;
    _it = it;
    _jv = jv;
    _mk = mk;
    _tg = tg;
    _or = or;
    _fr = fr;
    _sr = sr;
    _ka = ka;
    _mn = mn;
    _my = my;
    _bg = bg;
    _kk = kk;
    _co = co;
    _sl = sl;
    _ta = ta;
    _nl = nl;
    _ht = ht;
    _mi = mi;
    _om = om;
    _sc = sc;
    _yo = yo;
    _fo = fo;
    _lt = lt;
    _ce = ce;
    _ca = ca;
    _cy = cy;
    _li = li;
    _an = an;
    _st = st;
    _uz = uz;
    _bn = bn;
    _kn = kn;
    _id = id;
    _is = iss;
    _ru = ru;
    _am = am;
    _af = af;
    _eo = eo;
    _ee = ee;
    _fy = fy;
    _qu = qu;
    _sq = sq;
    _br = br;
    _tr = tr;
    _bo = bo;
    _ar = ar;
    _vo = vo;
    _mg = mg;
    _ab = ab;
    _zu = zu;
    _tl = tl;
    _th = th;
    _sw = sw;
    _lv = lv;
    _ky = ky;
    _ny = ny;
    _fa = fa;
    _es = es;
    _ig = ig;
    _bs = bs;
    _sd = sd;
    _sm = sm;
    _km = km;
    _kv = kv;
    _ie = ie;
    _et = et;
    _av = av;
    _yi = yi;
    _ia = ia;
    _cu = cu;
    _az = az;
    _kw = kw;
    _os = os;
    _hr = hr;
    _mr = mr;
    _ms = ms;
    _nv = nv;
    _bi = bi;
    _na = na;
    _eu = eu;
    _fi = fi;
    _tk = tk;
    _en = en;
    _no = no;
    _ga = ga;
    _io = io;
    _cv = cv;
    _lo = lo;
    _su = su;
    _gd = gd;
}

  LocalNames.fromJson(dynamic json) {
    _sh = json['sh'];
    _kl = json['kl'];
    _de = json['de'];
    _to = json['to'];
    _wa = json['wa'];
    _ps = json['ps'];
    _zh = json['zh'];
    _sn = json['sn'];
    _ascii = json['ascii'];
    _bh = json['bh'];
    _hy = json['hy'];
    _te = json['te'];
    _gu = json['gu'];
    _sv = json['sv'];
    _el = json['el'];
    _nn = json['nn'];
    _he = json['he'];
    _featureName = json['feature_name'];
    _rm = json['rm'];
    _hu = json['hu'];
    _ha = json['ha'];
    _pt = json['pt'];
    _da = json['da'];
    _ug = json['ug'];
    _pa = json['pa'];
    _ku = json['ku'];
    _gv = json['gv'];
    _bm = json['bm'];
    _se = json['se'];
    _sk = json['sk'];
    _tt = json['tt'];
    _ne = json['ne'];
    _lb = json['lb'];
    _gl = json['gl'];
    _ko = json['ko'];
    _tw = json['tw'];
    _sa = json['sa'];
    _si = json['si'];
    _ay = json['ay'];
    _be = json['be'];
    _ml = json['ml'];
    _ff = json['ff'];
    _ro = json['ro'];
    _hi = json['hi'];
    _fj = json['fj'];
    _cs = json['cs'];
    _ba = json['ba'];
    _ln = json['ln'];
    _uk = json['uk'];
    _oc = json['oc'];
    _mt = json['mt'];
    _so = json['so'];
    _ja = json['ja'];
    _gn = json['gn'];
    _wo = json['wo'];
    _pl = json['pl'];
    _vi = json['vi'];
    _ur = json['ur'];
    _it = json['it'];
    _jv = json['jv'];
    _mk = json['mk'];
    _tg = json['tg'];
    _or = json['or'];
    _fr = json['fr'];
    _sr = json['sr'];
    _ka = json['ka'];
    _mn = json['mn'];
    _my = json['my'];
    _bg = json['bg'];
    _kk = json['kk'];
    _co = json['co'];
    _sl = json['sl'];
    _ta = json['ta'];
    _nl = json['nl'];
    _ht = json['ht'];
    _mi = json['mi'];
    _om = json['om'];
    _sc = json['sc'];
    _yo = json['yo'];
    _fo = json['fo'];
    _lt = json['lt'];
    _ce = json['ce'];
    _ca = json['ca'];
    _cy = json['cy'];
    _li = json['li'];
    _an = json['an'];
    _st = json['st'];
    _uz = json['uz'];
    _bn = json['bn'];
    _kn = json['kn'];
    _id = json['id'];
    _is = json['iss'];
    _ru = json['ru'];
    _am = json['am'];
    _af = json['af'];
    _eo = json['eo'];
    _ee = json['ee'];
    _fy = json['fy'];
    _qu = json['qu'];
    _sq = json['sq'];
    _br = json['br'];
    _tr = json['tr'];
    _bo = json['bo'];
    _ar = json['ar'];
    _vo = json['vo'];
    _mg = json['mg'];
    _ab = json['ab'];
    _zu = json['zu'];
    _tl = json['tl'];
    _th = json['th'];
    _sw = json['sw'];
    _lv = json['lv'];
    _ky = json['ky'];
    _ny = json['ny'];
    _fa = json['fa'];
    _es = json['es'];
    _ig = json['ig'];
    _bs = json['bs'];
    _sd = json['sd'];
    _sm = json['sm'];
    _km = json['km'];
    _kv = json['kv'];
    _ie = json['ie'];
    _et = json['et'];
    _av = json['av'];
    _yi = json['yi'];
    _ia = json['ia'];
    _cu = json['cu'];
    _az = json['az'];
    _kw = json['kw'];
    _os = json['os'];
    _hr = json['hr'];
    _mr = json['mr'];
    _ms = json['ms'];
    _nv = json['nv'];
    _bi = json['bi'];
    _na = json['na'];
    _eu = json['eu'];
    _fi = json['fi'];
    _tk = json['tk'];
    _en = json['en'];
    _no = json['no'];
    _ga = json['ga'];
    _io = json['io'];
    _cv = json['cv'];
    _lo = json['lo'];
    _su = json['su'];
    _gd = json['gd'];
  }
  String? _sh;
  String? _kl;
  String? _de;
  String? _to;
  String? _wa;
  String? _ps;
  String? _zh;
  String? _sn;
  String? _ascii;
  String? _bh;
  String? _hy;
  String? _te;
  String? _gu;
  String? _sv;
  String? _el;
  String? _nn;
  String? _he;
  String? _featureName;
  String? _rm;
  String? _hu;
  String? _ha;
  String? _pt;
  String? _da;
  String? _ug;
  String? _pa;
  String? _ku;
  String? _gv;
  String? _bm;
  String? _se;
  String? _sk;
  String? _tt;
  String? _ne;
  String? _lb;
  String? _gl;
  String? _ko;
  String? _tw;
  String? _sa;
  String? _si;
  String? _ay;
  String? _be;
  String? _ml;
  String? _ff;
  String? _ro;
  String? _hi;
  String? _fj;
  String? _cs;
  String? _ba;
  String? _ln;
  String? _uk;
  String? _oc;
  String? _mt;
  String? _so;
  String? _ja;
  String? _gn;
  String? _wo;
  String? _pl;
  String? _vi;
  String? _ur;
  String? _it;
  String? _jv;
  String? _mk;
  String? _tg;
  String? _or;
  String? _fr;
  String? _sr;
  String? _ka;
  String? _mn;
  String? _my;
  String? _bg;
  String? _kk;
  String? _co;
  String? _sl;
  String? _ta;
  String? _nl;
  String? _ht;
  String? _mi;
  String? _om;
  String? _sc;
  String? _yo;
  String? _fo;
  String? _lt;
  String? _ce;
  String? _ca;
  String? _cy;
  String? _li;
  String? _an;
  String? _st;
  String? _uz;
  String? _bn;
  String? _kn;
  String? _id;
  String? _is;
  String? _ru;
  String? _am;
  String? _af;
  String? _eo;
  String? _ee;
  String? _fy;
  String? _qu;
  String? _sq;
  String? _br;
  String? _tr;
  String? _bo;
  String? _ar;
  String? _vo;
  String? _mg;
  String? _ab;
  String? _zu;
  String? _tl;
  String? _th;
  String? _sw;
  String? _lv;
  String? _ky;
  String? _ny;
  String? _fa;
  String? _es;
  String? _ig;
  String? _bs;
  String? _sd;
  String? _sm;
  String? _km;
  String? _kv;
  String? _ie;
  String? _et;
  String? _av;
  String? _yi;
  String? _ia;
  String? _cu;
  String? _az;
  String? _kw;
  String? _os;
  String? _hr;
  String? _mr;
  String? _ms;
  String? _nv;
  String? _bi;
  String? _na;
  String? _eu;
  String? _fi;
  String? _tk;
  String? _en;
  String? _no;
  String? _ga;
  String? _io;
  String? _cv;
  String? _lo;
  String? _su;
  String? _gd;
LocalNames copyWith({  String? sh,
  String? kl,
  String? de,
  String? to,
  String? wa,
  String? ps,
  String? zh,
  String? sn,
  String? ascii,
  String? bh,
  String? hy,
  String? te,
  String? gu,
  String? sv,
  String? el,
  String? nn,
  String? he,
  String? featureName,
  String? rm,
  String? hu,
  String? ha,
  String? pt,
  String? da,
  String? ug,
  String? pa,
  String? ku,
  String? gv,
  String? bm,
  String? se,
  String? sk,
  String? tt,
  String? ne,
  String? lb,
  String? gl,
  String? ko,
  String? tw,
  String? sa,
  String? si,
  String? ay,
  String? be,
  String? ml,
  String? ff,
  String? ro,
  String? hi,
  String? fj,
  String? cs,
  String? ba,
  String? ln,
  String? uk,
  String? oc,
  String? mt,
  String? so,
  String? ja,
  String? gn,
  String? wo,
  String? pl,
  String? vi,
  String? ur,
  String? it,
  String? jv,
  String? mk,
  String? tg,
  String? or,
  String? fr,
  String? sr,
  String? ka,
  String? mn,
  String? my,
  String? bg,
  String? kk,
  String? co,
  String? sl,
  String? ta,
  String? nl,
  String? ht,
  String? mi,
  String? om,
  String? sc,
  String? yo,
  String? fo,
  String? lt,
  String? ce,
  String? ca,
  String? cy,
  String? li,
  String? an,
  String? st,
  String? uz,
  String? bn,
  String? kn,
  String? id,
  String? iss,
  String? ru,
  String? am,
  String? af,
  String? eo,
  String? ee,
  String? fy,
  String? qu,
  String? sq,
  String? br,
  String? tr,
  String? bo,
  String? ar,
  String? vo,
  String? mg,
  String? ab,
  String? zu,
  String? tl,
  String? th,
  String? sw,
  String? lv,
  String? ky,
  String? ny,
  String? fa,
  String? es,
  String? ig,
  String? bs,
  String? sd,
  String? sm,
  String? km,
  String? kv,
  String? ie,
  String? et,
  String? av,
  String? yi,
  String? ia,
  String? cu,
  String? az,
  String? kw,
  String? os,
  String? hr,
  String? mr,
  String? ms,
  String? nv,
  String? bi,
  String? na,
  String? eu,
  String? fi,
  String? tk,
  String? en,
  String? no,
  String? ga,
  String? io,
  String? cv,
  String? lo,
  String? su,
  String? gd,
}) => LocalNames(  sh: sh ?? _sh,
  kl: kl ?? _kl,
  de: de ?? _de,
  to: to ?? _to,
  wa: wa ?? _wa,
  ps: ps ?? _ps,
  zh: zh ?? _zh,
  sn: sn ?? _sn,
  ascii: ascii ?? _ascii,
  bh: bh ?? _bh,
  hy: hy ?? _hy,
  te: te ?? _te,
  gu: gu ?? _gu,
  sv: sv ?? _sv,
  el: el ?? _el,
  nn: nn ?? _nn,
  he: he ?? _he,
  featureName: featureName ?? _featureName,
  rm: rm ?? _rm,
  hu: hu ?? _hu,
  ha: ha ?? _ha,
  pt: pt ?? _pt,
  da: da ?? _da,
  ug: ug ?? _ug,
  pa: pa ?? _pa,
  ku: ku ?? _ku,
  gv: gv ?? _gv,
  bm: bm ?? _bm,
  se: se ?? _se,
  sk: sk ?? _sk,
  tt: tt ?? _tt,
  ne: ne ?? _ne,
  lb: lb ?? _lb,
  gl: gl ?? _gl,
  ko: ko ?? _ko,
  tw: tw ?? _tw,
  sa: sa ?? _sa,
  si: si ?? _si,
  ay: ay ?? _ay,
  be: be ?? _be,
  ml: ml ?? _ml,
  ff: ff ?? _ff,
  ro: ro ?? _ro,
  hi: hi ?? _hi,
  fj: fj ?? _fj,
  cs: cs ?? _cs,
  ba: ba ?? _ba,
  ln: ln ?? _ln,
  uk: uk ?? _uk,
  oc: oc ?? _oc,
  mt: mt ?? _mt,
  so: so ?? _so,
  ja: ja ?? _ja,
  gn: gn ?? _gn,
  wo: wo ?? _wo,
  pl: pl ?? _pl,
  vi: vi ?? _vi,
  ur: ur ?? _ur,
  it: it ?? _it,
  jv: jv ?? _jv,
  mk: mk ?? _mk,
  tg: tg ?? _tg,
  or: or ?? _or,
  fr: fr ?? _fr,
  sr: sr ?? _sr,
  ka: ka ?? _ka,
  mn: mn ?? _mn,
  my: my ?? _my,
  bg: bg ?? _bg,
  kk: kk ?? _kk,
  co: co ?? _co,
  sl: sl ?? _sl,
  ta: ta ?? _ta,
  nl: nl ?? _nl,
  ht: ht ?? _ht,
  mi: mi ?? _mi,
  om: om ?? _om,
  sc: sc ?? _sc,
  yo: yo ?? _yo,
  fo: fo ?? _fo,
  lt: lt ?? _lt,
  ce: ce ?? _ce,
  ca: ca ?? _ca,
  cy: cy ?? _cy,
  li: li ?? _li,
  an: an ?? _an,
  st: st ?? _st,
  uz: uz ?? _uz,
  bn: bn ?? _bn,
  kn: kn ?? _kn,
  id: id ?? _id,
  iss: iss ?? _is,
  ru: ru ?? _ru,
  am: am ?? _am,
  af: af ?? _af,
  eo: eo ?? _eo,
  ee: ee ?? _ee,
  fy: fy ?? _fy,
  qu: qu ?? _qu,
  sq: sq ?? _sq,
  br: br ?? _br,
  tr: tr ?? _tr,
  bo: bo ?? _bo,
  ar: ar ?? _ar,
  vo: vo ?? _vo,
  mg: mg ?? _mg,
  ab: ab ?? _ab,
  zu: zu ?? _zu,
  tl: tl ?? _tl,
  th: th ?? _th,
  sw: sw ?? _sw,
  lv: lv ?? _lv,
  ky: ky ?? _ky,
  ny: ny ?? _ny,
  fa: fa ?? _fa,
  es: es ?? _es,
  ig: ig ?? _ig,
  bs: bs ?? _bs,
  sd: sd ?? _sd,
  sm: sm ?? _sm,
  km: km ?? _km,
  kv: kv ?? _kv,
  ie: ie ?? _ie,
  et: et ?? _et,
  av: av ?? _av,
  yi: yi ?? _yi,
  ia: ia ?? _ia,
  cu: cu ?? _cu,
  az: az ?? _az,
  kw: kw ?? _kw,
  os: os ?? _os,
  hr: hr ?? _hr,
  mr: mr ?? _mr,
  ms: ms ?? _ms,
  nv: nv ?? _nv,
  bi: bi ?? _bi,
  na: na ?? _na,
  eu: eu ?? _eu,
  fi: fi ?? _fi,
  tk: tk ?? _tk,
  en: en ?? _en,
  no: no ?? _no,
  ga: ga ?? _ga,
  io: io ?? _io,
  cv: cv ?? _cv,
  lo: lo ?? _lo,
  su: su ?? _su,
  gd: gd ?? _gd,
);
  String? get sh => _sh;
  String? get kl => _kl;
  String? get de => _de;
  String? get to => _to;
  String? get wa => _wa;
  String? get ps => _ps;
  String? get zh => _zh;
  String? get sn => _sn;
  String? get ascii => _ascii;
  String? get bh => _bh;
  String? get hy => _hy;
  String? get te => _te;
  String? get gu => _gu;
  String? get sv => _sv;
  String? get el => _el;
  String? get nn => _nn;
  String? get he => _he;
  String? get featureName => _featureName;
  String? get rm => _rm;
  String? get hu => _hu;
  String? get ha => _ha;
  String? get pt => _pt;
  String? get da => _da;
  String? get ug => _ug;
  String? get pa => _pa;
  String? get ku => _ku;
  String? get gv => _gv;
  String? get bm => _bm;
  String? get se => _se;
  String? get sk => _sk;
  String? get tt => _tt;
  String? get ne => _ne;
  String? get lb => _lb;
  String? get gl => _gl;
  String? get ko => _ko;
  String? get tw => _tw;
  String? get sa => _sa;
  String? get si => _si;
  String? get ay => _ay;
  String? get be => _be;
  String? get ml => _ml;
  String? get ff => _ff;
  String? get ro => _ro;
  String? get hi => _hi;
  String? get fj => _fj;
  String? get cs => _cs;
  String? get ba => _ba;
  String? get ln => _ln;
  String? get uk => _uk;
  String? get oc => _oc;
  String? get mt => _mt;
  String? get so => _so;
  String? get ja => _ja;
  String? get gn => _gn;
  String? get wo => _wo;
  String? get pl => _pl;
  String? get vi => _vi;
  String? get ur => _ur;
  String? get it => _it;
  String? get jv => _jv;
  String? get mk => _mk;
  String? get tg => _tg;
  String? get or => _or;
  String? get fr => _fr;
  String? get sr => _sr;
  String? get ka => _ka;
  String? get mn => _mn;
  String? get my => _my;
  String? get bg => _bg;
  String? get kk => _kk;
  String? get co => _co;
  String? get sl => _sl;
  String? get ta => _ta;
  String? get nl => _nl;
  String? get ht => _ht;
  String? get mi => _mi;
  String? get om => _om;
  String? get sc => _sc;
  String? get yo => _yo;
  String? get fo => _fo;
  String? get lt => _lt;
  String? get ce => _ce;
  String? get ca => _ca;
  String? get cy => _cy;
  String? get li => _li;
  String? get an => _an;
  String? get st => _st;
  String? get uz => _uz;
  String? get bn => _bn;
  String? get kn => _kn;
  String? get id => _id;
  String? get iss => _is;
  String? get ru => _ru;
  String? get am => _am;
  String? get af => _af;
  String? get eo => _eo;
  String? get ee => _ee;
  String? get fy => _fy;
  String? get qu => _qu;
  String? get sq => _sq;
  String? get br => _br;
  String? get tr => _tr;
  String? get bo => _bo;
  String? get ar => _ar;
  String? get vo => _vo;
  String? get mg => _mg;
  String? get ab => _ab;
  String? get zu => _zu;
  String? get tl => _tl;
  String? get th => _th;
  String? get sw => _sw;
  String? get lv => _lv;
  String? get ky => _ky;
  String? get ny => _ny;
  String? get fa => _fa;
  String? get es => _es;
  String? get ig => _ig;
  String? get bs => _bs;
  String? get sd => _sd;
  String? get sm => _sm;
  String? get km => _km;
  String? get kv => _kv;
  String? get ie => _ie;
  String? get et => _et;
  String? get av => _av;
  String? get yi => _yi;
  String? get ia => _ia;
  String? get cu => _cu;
  String? get az => _az;
  String? get kw => _kw;
  String? get os => _os;
  String? get hr => _hr;
  String? get mr => _mr;
  String? get ms => _ms;
  String? get nv => _nv;
  String? get bi => _bi;
  String? get na => _na;
  String? get eu => _eu;
  String? get fi => _fi;
  String? get tk => _tk;
  String? get en => _en;
  String? get no => _no;
  String? get ga => _ga;
  String? get io => _io;
  String? get cv => _cv;
  String? get lo => _lo;
  String? get su => _su;
  String? get gd => _gd;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sh'] = _sh;
    map['kl'] = _kl;
    map['de'] = _de;
    map['to'] = _to;
    map['wa'] = _wa;
    map['ps'] = _ps;
    map['zh'] = _zh;
    map['sn'] = _sn;
    map['ascii'] = _ascii;
    map['bh'] = _bh;
    map['hy'] = _hy;
    map['te'] = _te;
    map['gu'] = _gu;
    map['sv'] = _sv;
    map['el'] = _el;
    map['nn'] = _nn;
    map['he'] = _he;
    map['feature_name'] = _featureName;
    map['rm'] = _rm;
    map['hu'] = _hu;
    map['ha'] = _ha;
    map['pt'] = _pt;
    map['da'] = _da;
    map['ug'] = _ug;
    map['pa'] = _pa;
    map['ku'] = _ku;
    map['gv'] = _gv;
    map['bm'] = _bm;
    map['se'] = _se;
    map['sk'] = _sk;
    map['tt'] = _tt;
    map['ne'] = _ne;
    map['lb'] = _lb;
    map['gl'] = _gl;
    map['ko'] = _ko;
    map['tw'] = _tw;
    map['sa'] = _sa;
    map['si'] = _si;
    map['ay'] = _ay;
    map['be'] = _be;
    map['ml'] = _ml;
    map['ff'] = _ff;
    map['ro'] = _ro;
    map['hi'] = _hi;
    map['fj'] = _fj;
    map['cs'] = _cs;
    map['ba'] = _ba;
    map['ln'] = _ln;
    map['uk'] = _uk;
    map['oc'] = _oc;
    map['mt'] = _mt;
    map['so'] = _so;
    map['ja'] = _ja;
    map['gn'] = _gn;
    map['wo'] = _wo;
    map['pl'] = _pl;
    map['vi'] = _vi;
    map['ur'] = _ur;
    map['it'] = _it;
    map['jv'] = _jv;
    map['mk'] = _mk;
    map['tg'] = _tg;
    map['or'] = _or;
    map['fr'] = _fr;
    map['sr'] = _sr;
    map['ka'] = _ka;
    map['mn'] = _mn;
    map['my'] = _my;
    map['bg'] = _bg;
    map['kk'] = _kk;
    map['co'] = _co;
    map['sl'] = _sl;
    map['ta'] = _ta;
    map['nl'] = _nl;
    map['ht'] = _ht;
    map['mi'] = _mi;
    map['om'] = _om;
    map['sc'] = _sc;
    map['yo'] = _yo;
    map['fo'] = _fo;
    map['lt'] = _lt;
    map['ce'] = _ce;
    map['ca'] = _ca;
    map['cy'] = _cy;
    map['li'] = _li;
    map['an'] = _an;
    map['st'] = _st;
    map['uz'] = _uz;
    map['bn'] = _bn;
    map['kn'] = _kn;
    map['id'] = _id;
    map['iss'] = _is;
    map['ru'] = _ru;
    map['am'] = _am;
    map['af'] = _af;
    map['eo'] = _eo;
    map['ee'] = _ee;
    map['fy'] = _fy;
    map['qu'] = _qu;
    map['sq'] = _sq;
    map['br'] = _br;
    map['tr'] = _tr;
    map['bo'] = _bo;
    map['ar'] = _ar;
    map['vo'] = _vo;
    map['mg'] = _mg;
    map['ab'] = _ab;
    map['zu'] = _zu;
    map['tl'] = _tl;
    map['th'] = _th;
    map['sw'] = _sw;
    map['lv'] = _lv;
    map['ky'] = _ky;
    map['ny'] = _ny;
    map['fa'] = _fa;
    map['es'] = _es;
    map['ig'] = _ig;
    map['bs'] = _bs;
    map['sd'] = _sd;
    map['sm'] = _sm;
    map['km'] = _km;
    map['kv'] = _kv;
    map['ie'] = _ie;
    map['et'] = _et;
    map['av'] = _av;
    map['yi'] = _yi;
    map['ia'] = _ia;
    map['cu'] = _cu;
    map['az'] = _az;
    map['kw'] = _kw;
    map['os'] = _os;
    map['hr'] = _hr;
    map['mr'] = _mr;
    map['ms'] = _ms;
    map['nv'] = _nv;
    map['bi'] = _bi;
    map['na'] = _na;
    map['eu'] = _eu;
    map['fi'] = _fi;
    map['tk'] = _tk;
    map['en'] = _en;
    map['no'] = _no;
    map['ga'] = _ga;
    map['io'] = _io;
    map['cv'] = _cv;
    map['lo'] = _lo;
    map['su'] = _su;
    map['gd'] = _gd;
    return map;
  }

}