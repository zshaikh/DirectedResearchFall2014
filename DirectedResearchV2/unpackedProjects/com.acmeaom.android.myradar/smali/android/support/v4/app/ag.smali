.class public Landroid/support/v4/app/ag;
.super Landroid/support/v4/app/am;
.source "ProGuard"


# instance fields
.field a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 785
    invoke-direct {p0}, Landroid/support/v4/app/am;-><init>()V

    .line 783
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ag;->a:Ljava/util/ArrayList;

    .line 786
    return-void
.end method
