.class public Lmobi/mgeek/TunnyBrowser/NewTabPreference;
.super Lcom/mgeek/android/ui/MultiChoicePreference;
.source "NewTabPreference.java"


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
    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e04e5

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/NewTabPreference;->a([I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected b()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "show_bookmarks_when_new_tab"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected c()[Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Z

    aput-boolean v1, v0, v1

    return-object v0
.end method
