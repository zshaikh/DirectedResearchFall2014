.class Lmobi/mgeek/TunnyBrowser/bs;
.super Lcom/dolphin/browser/util/f;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/br;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/br;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1176
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/bs;->b:Lmobi/mgeek/TunnyBrowser/br;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/bs;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1176
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/bs;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bs;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/dolphin/browser/core/be;->a(Ljava/lang/String;)V

    .line 1182
    const/4 v0, 0x0

    return-object v0
.end method
