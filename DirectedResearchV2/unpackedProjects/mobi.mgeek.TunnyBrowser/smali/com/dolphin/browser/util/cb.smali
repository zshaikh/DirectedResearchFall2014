.class Lcom/dolphin/browser/util/cb;
.super Lcom/dolphin/browser/util/by;
.source "PreferenceHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/dolphin/browser/util/by;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/util/bz;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/dolphin/browser/util/cb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 46
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    return-void
.end method
