.class public final Lcom/buffalostudios/aneutils/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buffalostudios/aneutils/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static app_name:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/high16 v0, 0x7f03

    sput v0, Lcom/buffalostudios/aneutils/R$string;->app_name:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
