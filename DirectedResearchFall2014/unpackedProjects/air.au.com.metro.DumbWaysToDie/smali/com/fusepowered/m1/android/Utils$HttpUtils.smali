.class Lcom/fusepowered/m1/android/Utils$HttpUtils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HttpUtils"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static executeUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 40
    new-instance v0, Lcom/fusepowered/m1/android/Utils$HttpUtils$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/Utils$HttpUtils$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/fusepowered/m1/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method
