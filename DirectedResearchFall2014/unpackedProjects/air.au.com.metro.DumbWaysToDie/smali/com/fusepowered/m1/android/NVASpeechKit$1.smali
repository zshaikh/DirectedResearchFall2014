.class Lcom/fusepowered/m1/android/NVASpeechKit$1;
.super Ljava/lang/Object;
.source "NVASpeechKit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/NVASpeechKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/NVASpeechKit;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/NVASpeechKit;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/fusepowered/m1/android/NVASpeechKit$1;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$1;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->endRecording()Z

    .line 204
    return-void
.end method
