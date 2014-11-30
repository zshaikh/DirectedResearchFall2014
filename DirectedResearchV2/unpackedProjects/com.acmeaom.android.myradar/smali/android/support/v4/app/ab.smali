.class public Landroid/support/v4/app/ab;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Landroid/support/v4/app/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 154
    new-instance v0, Landroid/support/v4/app/al;

    invoke-direct {v0}, Landroid/support/v4/app/al;-><init>()V

    sput-object v0, Landroid/support/v4/app/ab;->a:Landroid/support/v4/app/ah;

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 156
    new-instance v0, Landroid/support/v4/app/ak;

    invoke-direct {v0}, Landroid/support/v4/app/ak;-><init>()V

    sput-object v0, Landroid/support/v4/app/ab;->a:Landroid/support/v4/app/ah;

    goto :goto_0

    .line 157
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 158
    new-instance v0, Landroid/support/v4/app/aj;

    invoke-direct {v0}, Landroid/support/v4/app/aj;-><init>()V

    sput-object v0, Landroid/support/v4/app/ab;->a:Landroid/support/v4/app/ah;

    goto :goto_0

    .line 160
    :cond_2
    new-instance v0, Landroid/support/v4/app/ai;

    invoke-direct {v0}, Landroid/support/v4/app/ai;-><init>()V

    sput-object v0, Landroid/support/v4/app/ab;->a:Landroid/support/v4/app/ah;

    goto :goto_0
.end method

.method static synthetic a()Landroid/support/v4/app/ah;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Landroid/support/v4/app/ab;->a:Landroid/support/v4/app/ah;

    return-object v0
.end method
