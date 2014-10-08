.class Lcom/fusepowered/m1/android/BridgeMMMicrophone$1;
.super Ljava/lang/Object;
.source "BridgeMMMicrophone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/BridgeMMMicrophone;->delayedEnd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/BridgeMMMicrophone;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/BridgeMMMicrophone;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$1;->this$0:Lcom/fusepowered/m1/android/BridgeMMMicrophone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$1;->this$0:Lcom/fusepowered/m1/android/BridgeMMMicrophone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/BridgeMMMicrophone;->stopRecording(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;

    .line 84
    return-void
.end method
