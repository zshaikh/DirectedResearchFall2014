.class public Lcom/fusepowered/m1/android/NVASpeechKit$Result;
.super Ljava/lang/Object;
.source "NVASpeechKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/NVASpeechKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field public final resultScore:I

.field public final resultString:Ljava/lang/String;

.field final synthetic this$0:Lcom/fusepowered/m1/android/NVASpeechKit;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m1/android/NVASpeechKit;Ljava/lang/String;D)V
    .locals 1
    .param p2, "resultString"    # Ljava/lang/String;
    .param p3, "resultScore"    # D

    .prologue
    .line 93
    iput-object p1, p0, Lcom/fusepowered/m1/android/NVASpeechKit$Result;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/fusepowered/m1/android/NVASpeechKit$Result;->resultString:Ljava/lang/String;

    .line 95
    double-to-int v0, p3

    iput v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$Result;->resultScore:I

    .line 96
    return-void
.end method


# virtual methods
.method public getResultScore()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$Result;->resultScore:I

    return v0
.end method

.method public getResultString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$Result;->resultString:Ljava/lang/String;

    return-object v0
.end method
