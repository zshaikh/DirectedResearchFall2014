.class public Ldolphin/webkit/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# static fields
.field public static final IS_ICS:Z
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field public static final IS_ICS_MR1:Z
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field public static final IS_JB:Z
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field public static final IS_JB_MR1:Z
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field

.field public static final IS_KITKAT:Z
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS:Z

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS_MR1:Z

    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Ldolphin/webkit/VersionInfo;->IS_JB:Z

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Ldolphin/webkit/VersionInfo;->IS_JB_MR1:Z

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_4

    :goto_4
    sput-boolean v1, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    return-void

    :cond_0
    move v0, v2

    .line 9
    goto :goto_0

    :cond_1
    move v0, v2

    .line 11
    goto :goto_1

    :cond_2
    move v0, v2

    .line 13
    goto :goto_2

    :cond_3
    move v0, v2

    .line 15
    goto :goto_3

    :cond_4
    move v1, v2

    .line 17
    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
