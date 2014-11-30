.class public Ldolphin/webkit/BrowserVariationInfo;
.super Ljava/lang/Object;
.source "BrowserVariationInfo.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field public static final BVM_LANGUAGE_CN:I = 0x1

.field public static final BVM_LANGUAGE_EN:I = 0x0

.field public static final BVM_LANGUAGE_INVALID:I = -0x1

.field public static final BVM_LANGUAGE_JP:I = 0x2

.field public static final BVM_VARIATION_BROWSER_SHELL:I = 0x0

.field public static final BVM_VARIATION_ENGINE_BETA:I = 0x1

.field public static final BVM_VARIATION_INVALID:I = -0x1


# instance fields
.field public final language:I

.field public final pkgName:Ljava/lang/String;

.field public final variation:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Ldolphin/webkit/BrowserVariationInfo;->pkgName:Ljava/lang/String;

    .line 19
    iput p2, p0, Ldolphin/webkit/BrowserVariationInfo;->variation:I

    .line 20
    iput p3, p0, Ldolphin/webkit/BrowserVariationInfo;->language:I

    .line 21
    return-void
.end method
