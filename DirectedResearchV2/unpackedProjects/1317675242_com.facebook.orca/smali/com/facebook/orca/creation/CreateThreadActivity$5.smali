.class Lcom/facebook/orca/creation/CreateThreadActivity$5;
.super Ljava/lang/Object;
.source "CreateThreadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/creation/CreateThreadActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/facebook/orca/creation/CreateThreadActivity$5;->a:Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 171
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 172
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity$5;->a:Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/creation/CreateThreadActivity;->finish()V

    .line 173
    return-void
.end method
