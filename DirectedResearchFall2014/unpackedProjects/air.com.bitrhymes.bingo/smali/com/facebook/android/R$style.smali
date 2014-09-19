.class public final Lcom/facebook/android/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/android/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static com_facebook_loginview_default_style:I

.field public static com_facebook_loginview_silver_style:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 282
    const/high16 v0, 0x7f08

    sput v0, Lcom/facebook/android/R$style;->com_facebook_loginview_default_style:I

    .line 283
    const v0, 0x7f080001

    sput v0, Lcom/facebook/android/R$style;->com_facebook_loginview_silver_style:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
