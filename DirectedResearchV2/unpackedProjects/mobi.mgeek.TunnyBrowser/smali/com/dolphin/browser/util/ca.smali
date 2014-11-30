.class Lcom/dolphin/browser/util/ca;
.super Lcom/dolphin/browser/util/by;
.source "PreferenceHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/dolphin/browser/util/by;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/util/bz;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/dolphin/browser/util/ca;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 56
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 57
    return-void
.end method
