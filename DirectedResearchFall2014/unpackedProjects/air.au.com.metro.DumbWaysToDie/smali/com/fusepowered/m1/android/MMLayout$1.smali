.class Lcom/fusepowered/m1/android/MMLayout$1;
.super Ljava/lang/Object;
.source "MMLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/MMLayout;->setCloseArea(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/MMLayout;

.field final synthetic val$position:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/MMLayout;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMLayout$1;->this$0:Lcom/fusepowered/m1/android/MMLayout;

    iput-object p2, p0, Lcom/fusepowered/m1/android/MMLayout$1;->val$position:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMLayout$1;->this$0:Lcom/fusepowered/m1/android/MMLayout;

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMLayout$1;->val$position:Ljava/lang/String;

    #calls: Lcom/fusepowered/m1/android/MMLayout;->internalSetCloseArea(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/MMLayout;->access$000(Lcom/fusepowered/m1/android/MMLayout;Ljava/lang/String;)V

    .line 319
    return-void
.end method
