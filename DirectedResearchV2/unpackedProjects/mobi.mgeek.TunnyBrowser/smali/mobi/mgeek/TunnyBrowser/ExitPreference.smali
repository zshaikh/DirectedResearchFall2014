.class public Lmobi/mgeek/TunnyBrowser/ExitPreference;
.super Lcom/mgeek/android/ui/MultiChoicePreference;
.source "ExitPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/mgeek/android/ui/MultiChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/mgeek/android/ui/MultiChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method


# virtual methods
.method protected a()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e049e

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e046f

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0472

    aput v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0470

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/ExitPreference;->a([I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected b()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "show_exit_confirmation"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "clear_cache_checked"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "clear_history_checked"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "clear_cookie_when_exit"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected c()[Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
