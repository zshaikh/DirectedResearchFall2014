.class public Lmobi/mgeek/TunnyBrowser/fk;
.super Ljava/lang/Object;
.source "IconListenerSet.java"

# interfaces
.implements Lcom/dolphin/browser/core/WebIconDatabase$IconListener;


# static fields
.field private static c:Lmobi/mgeek/TunnyBrowser/fk;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/dolphin/browser/core/WebIconDatabase$IconListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/fk;->a:Ljava/util/HashMap;

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/fk;->b:Ljava/util/Vector;

    .line 32
    return-void
.end method

.method public static a()Lmobi/mgeek/TunnyBrowser/fk;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lmobi/mgeek/TunnyBrowser/fk;->c:Lmobi/mgeek/TunnyBrowser/fk;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lmobi/mgeek/TunnyBrowser/fk;

    invoke-direct {v0}, Lmobi/mgeek/TunnyBrowser/fk;-><init>()V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/fk;->c:Lmobi/mgeek/TunnyBrowser/fk;

    .line 54
    :cond_0
    sget-object v0, Lmobi/mgeek/TunnyBrowser/fk;->c:Lmobi/mgeek/TunnyBrowser/fk;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onReceivedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fk;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/core/WebIconDatabase$IconListener;

    .line 36
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/core/WebIconDatabase$IconListener;->onReceivedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method
