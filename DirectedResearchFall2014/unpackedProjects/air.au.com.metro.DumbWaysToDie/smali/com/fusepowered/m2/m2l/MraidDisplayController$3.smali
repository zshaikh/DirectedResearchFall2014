.class Lcom/fusepowered/m2/m2l/MraidDisplayController$3;
.super Ljava/lang/Object;
.source "MraidDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/MraidDisplayController;->showUserToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

.field private final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/MraidDisplayController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$3;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    iput-object p2, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$3;->val$message:Ljava/lang/String;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$3;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    # invokes: Lcom/fusepowered/m2/m2l/MraidDisplayController;->getContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->access$5(Lcom/fusepowered/m2/m2l/MraidDisplayController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$3;->val$message:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 371
    return-void
.end method
