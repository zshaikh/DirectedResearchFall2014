.class public final Lcom/aarki/R$string;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aarki/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static app_name:I

.field public static hello:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const v0, 0x7f040001

    sput v0, Lcom/aarki/R$string;->app_name:I

    .line 21
    const/high16 v0, 0x7f040000

    sput v0, Lcom/aarki/R$string;->hello:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
