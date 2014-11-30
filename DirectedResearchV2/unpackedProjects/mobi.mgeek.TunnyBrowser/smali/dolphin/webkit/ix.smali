.class Ldolphin/webkit/ix;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field private static a:Ldolphin/webkit/ix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 885
    const/4 v0, 0x0

    sput-object v0, Ldolphin/webkit/ix;->a:Ldolphin/webkit/ix;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 895
    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 888
    sget-object v0, Ldolphin/webkit/ix;->a:Ldolphin/webkit/ix;

    if-nez v0, :cond_0

    .line 889
    new-instance v0, Ldolphin/webkit/ix;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ldolphin/webkit/ix;-><init>(Landroid/content/Context;)V

    sput-object v0, Ldolphin/webkit/ix;->a:Ldolphin/webkit/ix;

    .line 891
    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 900
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 905
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .prologue
    .line 916
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    .line 917
    invoke-static {}, Ldolphin/webkit/dq;->h()V

    .line 919
    :cond_0
    invoke-static {p1}, Ldolphin/webkit/WebViewClassic;->n(I)V

    .line 920
    return-void
.end method
