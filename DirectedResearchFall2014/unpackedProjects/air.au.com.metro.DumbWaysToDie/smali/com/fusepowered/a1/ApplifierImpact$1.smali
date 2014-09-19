.class Lcom/fusepowered/a1/ApplifierImpact$1;
.super Ljava/lang/Object;
.source "ApplifierImpact.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/a1/ApplifierImpact;->onWebDataCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/a1/ApplifierImpact;


# direct methods
.method constructor <init>(Lcom/fusepowered/a1/ApplifierImpact;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/a1/ApplifierImpact$1;->this$0:Lcom/fusepowered/a1/ApplifierImpact;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/fusepowered/a1/ApplifierImpact$1;->this$0:Lcom/fusepowered/a1/ApplifierImpact;

    #getter for: Lcom/fusepowered/a1/ApplifierImpact;->_alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/fusepowered/a1/ApplifierImpact;->access$4(Lcom/fusepowered/a1/ApplifierImpact;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 398
    return-void
.end method
