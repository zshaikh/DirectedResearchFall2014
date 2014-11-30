.class Lmobi/mgeek/TunnyBrowser/bx;
.super Ljava/lang/Object;
.source "BrowserPluginList.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/az;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserPluginList;


# direct methods
.method private constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserPluginList;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/bx;->a:Lmobi/mgeek/TunnyBrowser/BrowserPluginList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserPluginList;Lmobi/mgeek/TunnyBrowser/bt;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/bx;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserPluginList;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a00f2

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v0

    return v0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0201c0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
