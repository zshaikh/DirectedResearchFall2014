.class public Lcom/dolphin/browser/x/d;
.super Ljava/lang/Object;
.source "WebContentProxyManager.java"

# interfaces
.implements Lcom/dolphin/browser/x/c;


# static fields
.field private static a:Lcom/dolphin/browser/x/d;

.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private c:Lcom/dolphin/browser/x/c;

.field private d:Ljava/lang/Boolean;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    .line 47
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "dolphin.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "dolphin-browser"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.taobao.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.baidu.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "wap.baidu.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "3g.sina.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "3g.youku.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "3g.163.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "3g.ifeng.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "wap.sohu.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "wap.kanshu.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "easou.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.vancl.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.dangdang.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.hiapk.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "wap.ganji"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "3g.ganji"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "qidian.cn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "mbook.cn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.appchina.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "wap.eastmoney.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "wap.hexun.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.hiapk.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "bbs.hiapk.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "hongxiu.cn/iphone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "wap.hongxiu"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "bbs.gfan.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "3g.gfan"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "huaban.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "3g.news.cn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "wap.people.com.cn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.xxsy.net"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.apk.hiapk.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "3g.gfan.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.anzhi.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "3g.56.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.joy.cn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.trends.com.cn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "moko.cc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "3g.aili.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "sina.cn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "wap.tiexue.net"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "wap.huanqiu.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "i.ifeng.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.360buy.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.amazon.cn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.lashou.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.nuomi.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.meituan.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "wap.rayli.com.cn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "3g.yoka.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.bitauto.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "wap.xcar.com.cn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "3g.qq.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "3g.kugou.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "3g.jiayuan.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "3g.baihe.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "wap.jstv.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "3g.mop.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "3g.tianya.cn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "3g.renren.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.douban.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.dianping.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.google.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "wap.huochepiao.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "touch.qunar.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "wap.8684.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "wap.8684.cn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "wap.kuaidi100.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.mtime.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.qiushibaike.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "map.baidu.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "www.google.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "m.google.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    const-string v1, "weibo.cn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "www.sina.com.cn"

    const-string v2, "http://3g.sina.com.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "sina.com.cn"

    const-string v2, "http://3g.sina.com.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "sina.com"

    const-string v2, "http://3g.sina.com.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "www.baidu.com"

    const-string v2, "http://m.baidu.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "baidu.com"

    const-string v2, "http://m.baidu.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "www.taobao.com"

    const-string v2, "http://m.taobao.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "taobao.com"

    const-string v2, "http://m.taobao.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "www.163.com"

    const-string v2, "http://3g.163.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "163.com"

    const-string v2, "http://3g.163.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "www.sohu.com"

    const-string v2, "http://wap.sohu.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "sohu.com"

    const-string v2, "http://wap.sohu.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "www.ifeng.com"

    const-string v2, "http://3g.ifeng.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "ifeng.com"

    const-string v2, "http://3g.ifeng.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "www.youku.com"

    const-string v2, "http://3g.youku.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "youku.com"

    const-string v2, "http://3g.youku.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "www.tudou.com"

    const-string v2, "http://m.tudou.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "tudou.com"

    const-string v2, "http://m.tudou.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "kanshu.com"

    const-string v2, "http://wap.kanshu.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "vancl.com"

    const-string v2, "http://m.vancl.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "hongxiu.cn"

    const-string v2, "http://wap.hongxiu.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "hongxiu.com"

    const-string v2, "http://wap.hongxiu.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "dangdang.com"

    const-string v2, "http://m.dangdang.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "hiapk.com"

    const-string v2, "http://m.hiapk.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "apk.hiapk.com"

    const-string v2, "http://m.apk.hiapk.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "ganji.com"

    const-string v2, "http://wap.ganji.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "ganji.cn"

    const-string v2, "http://wap.ganji.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "mbook.com"

    const-string v2, "http://wap.mbook.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "appchina.com"

    const-string v2, "http://m.appchina.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "hexun.com"

    const-string v2, "http://wap.hexun.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "eastmoney.com"

    const-string v2, "http://wap.eastmoney.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "news.cn"

    const-string v2, "http://3g.news.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "people.com.cn"

    const-string v2, "http://wap.people.com.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "xxsy.net"

    const-string v2, "http://m.xxsy.net"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "gfan.com"

    const-string v2, "http://3g.gfan.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "anzhi.com"

    const-string v2, "http://m.anzhi.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "56.com"

    const-string v2, "http://3g.56.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "joy.cn"

    const-string v2, "http://m.joy.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "trends.com.cn"

    const-string v2, "http://m.trends.com.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "aili.com"

    const-string v2, "http://3g.aili.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "tiexue.net"

    const-string v2, "http://wap.tiexue.net"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "huanqiu.com"

    const-string v2, "http://wap.huanqiu.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "360buy.com"

    const-string v2, "http://m.360buy.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "amazon.cn"

    const-string v2, "http://m.amazon.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "lashou.com"

    const-string v2, "http://m.lashou.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "nuomi.com"

    const-string v2, "http://m.nuomi.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "meituan.com"

    const-string v2, "http://m.meituan.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "www.rayli.com.cn"

    const-string v2, "http://wap.rayli.com.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "rayli.com.cn"

    const-string v2, "http://wap.rayli.com.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "yoka.com"

    const-string v2, "http://3g.yoka.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "bitauto.com"

    const-string v2, "http://m.bitauto.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "xcar.com.cn"

    const-string v2, "http://wap.xcar.com.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "qq.com"

    const-string v2, "http://3g.qq.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "kugou.com"

    const-string v2, "http://3g.kugou.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "jiayuan.com"

    const-string v2, "http://3g.jiayuan.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "baihe.com"

    const-string v2, "http://3g.baihe.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "jstv.com"

    const-string v2, "http://wap.jstv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "mop.com"

    const-string v2, "http://3g.mop.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "tianya.cn"

    const-string v2, "http://3g.tianya.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "renren.com"

    const-string v2, "http://3g.renren.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "douban.com"

    const-string v2, "http://m.douban.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "dianping.com"

    const-string v2, "http://m.dianping.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "google.com"

    const-string v2, "http://m.google.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "huochepiao.com"

    const-string v2, "http://wap.huochepiao.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "qunar.com"

    const-string v2, "http://touch.qunar.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "8684.com"

    const-string v2, "http://wap.8684.cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "kuaidi100.com"

    const-string v2, "http://wap.kuaidi100.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "mtime.com"

    const-string v2, "http://m.mtime.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    const-string v1, "qiushibaike.com"

    const-string v2, "http://m.qiushibaike.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 213
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/x/d;->b:Landroid/content/SharedPreferences;

    .line 215
    iget-object v0, p0, Lcom/dolphin/browser/x/d;->b:Landroid/content/SharedPreferences;

    const-string v1, "content_proxy_mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 216
    iget-object v1, p0, Lcom/dolphin/browser/x/d;->b:Landroid/content/SharedPreferences;

    const-string v2, "content_proxy_shownotice"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/x/d;->d:Ljava/lang/Boolean;

    .line 218
    invoke-direct {p0, v0}, Lcom/dolphin/browser/x/d;->a(I)V

    .line 219
    return-void
.end method

.method public static declared-synchronized a()Lcom/dolphin/browser/x/d;
    .locals 2

    .prologue
    .line 222
    const-class v1, Lcom/dolphin/browser/x/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/x/d;->a:Lcom/dolphin/browser/x/d;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/dolphin/browser/x/d;

    invoke-direct {v0}, Lcom/dolphin/browser/x/d;-><init>()V

    sput-object v0, Lcom/dolphin/browser/x/d;->a:Lcom/dolphin/browser/x/d;

    .line 226
    :cond_0
    sget-object v0, Lcom/dolphin/browser/x/d;->a:Lcom/dolphin/browser/x/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(I)V
    .locals 5

    .prologue
    .line 230
    const-string v0, "WebContentProxyManager"

    const-string v1, "set mode %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 231
    packed-switch p1, :pswitch_data_0

    .line 240
    :goto_0
    iput p1, p0, Lcom/dolphin/browser/x/d;->e:I

    .line 241
    return-void

    .line 233
    :pswitch_0
    invoke-static {}, Lcom/dolphin/browser/x/b;->a()Lcom/dolphin/browser/x/b;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/x/d;->c:Lcom/dolphin/browser/x/c;

    goto :goto_0

    .line 236
    :pswitch_1
    invoke-static {}, Lcom/dolphin/browser/x/a;->a()Lcom/dolphin/browser/x/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/x/d;->c:Lcom/dolphin/browser/x/c;

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private d(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 319
    sget-object v0, Lcom/dolphin/browser/x/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 320
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const/4 v0, 0x1

    .line 325
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 385
    const-string v0, "fromproxy=1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 389
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-object p0

    .line 393
    :cond_1
    const-string v0, "fromproxy=1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 394
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 395
    add-int/lit8 v0, v0, -0x1

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    const-string v2, "fromproxy=1"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    const-string v3, ""

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 311
    :goto_0
    return v0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/x/d;->b()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 279
    goto :goto_0

    .line 282
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 283
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    .line 285
    goto :goto_0

    .line 288
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dolphin/browser/x/d;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    .line 292
    goto :goto_0

    .line 295
    :cond_3
    const-string v4, "http"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v0}, Lcom/dolphin/browser/x/d;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v0, v1

    .line 297
    goto :goto_0

    .line 300
    :cond_5
    const-string v3, "www."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 301
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    :cond_6
    sget-object v3, Lcom/dolphin/browser/x/d;->g:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    .line 304
    goto :goto_0

    .line 307
    :cond_7
    iget-object v0, p0, Lcom/dolphin/browser/x/d;->c:Lcom/dolphin/browser/x/c;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/x/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 308
    goto :goto_0

    :cond_8
    move v0, v2

    .line 311
    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    :goto_0
    return-object p1

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/x/d;->c:Lcom/dolphin/browser/x/c;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/x/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {v0}, Lcom/dolphin/browser/x/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public b()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 413
    iget v0, p0, Lcom/dolphin/browser/x/d;->e:I

    if-nez v0, :cond_0

    move v0, v1

    .line 429
    :goto_0
    return v0

    .line 417
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->getUserAgent()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 418
    goto :goto_0

    .line 422
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/core/AppContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 424
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 426
    goto :goto_0

    :cond_2
    move v0, v2

    .line 429
    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 372
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    :goto_0
    return-object p1

    .line 376
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/x/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    invoke-static {p1}, Lcom/dolphin/browser/x/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object p1, v0

    .line 381
    goto :goto_0
.end method
