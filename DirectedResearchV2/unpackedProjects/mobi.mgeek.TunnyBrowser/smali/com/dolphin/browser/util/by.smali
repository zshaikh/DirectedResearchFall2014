.class public abstract Lcom/dolphin/browser/util/by;
.super Ljava/lang/Object;
.source "PreferenceHelper.java"


# static fields
.field private static a:Lcom/dolphin/browser/util/by;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static a()Lcom/dolphin/browser/util/by;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    sget-object v0, Lcom/dolphin/browser/util/by;->a:Lcom/dolphin/browser/util/by;

    if-nez v0, :cond_0

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 34
    new-instance v0, Lcom/dolphin/browser/util/ca;

    invoke-direct {v0, v2}, Lcom/dolphin/browser/util/ca;-><init>(Lcom/dolphin/browser/util/bz;)V

    sput-object v0, Lcom/dolphin/browser/util/by;->a:Lcom/dolphin/browser/util/by;

    .line 39
    :cond_0
    :goto_0
    sget-object v0, Lcom/dolphin/browser/util/by;->a:Lcom/dolphin/browser/util/by;

    return-object v0

    .line 36
    :cond_1
    new-instance v0, Lcom/dolphin/browser/util/cb;

    invoke-direct {v0, v2}, Lcom/dolphin/browser/util/cb;-><init>(Lcom/dolphin/browser/util/bz;)V

    sput-object v0, Lcom/dolphin/browser/util/by;->a:Lcom/dolphin/browser/util/by;

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Landroid/content/SharedPreferences$Editor;)V
.end method
