.class public Landroid/support/v4/view/bo;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/br;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 106
    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 107
    new-instance v0, Landroid/support/v4/view/bs;

    invoke-direct {v0}, Landroid/support/v4/view/bs;-><init>()V

    sput-object v0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/br;

    .line 115
    :goto_0
    return-void

    .line 108
    :cond_0
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 109
    new-instance v0, Landroid/support/v4/view/bq;

    invoke-direct {v0}, Landroid/support/v4/view/bq;-><init>()V

    sput-object v0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/br;

    goto :goto_0

    .line 110
    :cond_1
    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 111
    new-instance v0, Landroid/support/v4/view/bp;

    invoke-direct {v0}, Landroid/support/v4/view/bp;-><init>()V

    sput-object v0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/br;

    goto :goto_0

    .line 113
    :cond_2
    new-instance v0, Landroid/support/v4/view/bt;

    invoke-direct {v0}, Landroid/support/v4/view/bt;-><init>()V

    sput-object v0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/br;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 1

    .prologue
    .line 161
    sget-object v0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/br;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/br;->a(Landroid/view/ViewGroup;Z)V

    .line 162
    return-void
.end method
