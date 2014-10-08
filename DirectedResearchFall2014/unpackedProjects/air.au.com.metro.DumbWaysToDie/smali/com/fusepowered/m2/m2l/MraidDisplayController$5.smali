.class Lcom/fusepowered/m2/m2l/MraidDisplayController$5;
.super Ljava/lang/Object;
.source "MraidDisplayController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/MraidDisplayController;->showUserDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

.field private final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/MraidDisplayController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$5;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    iput-object p2, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$5;->val$imageUrl:Ljava/lang/String;

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 442
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$5;->this$0:Lcom/fusepowered/m2/m2l/MraidDisplayController;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController$5;->val$imageUrl:Ljava/lang/String;

    # invokes: Lcom/fusepowered/m2/m2l/MraidDisplayController;->downloadImage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->access$8(Lcom/fusepowered/m2/m2l/MraidDisplayController;Ljava/lang/String;)V

    .line 443
    return-void
.end method
