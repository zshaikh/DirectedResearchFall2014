.class Lcom/fusepowered/m2/m2l/MraidBrowser$6;
.super Ljava/lang/Object;
.source "MraidBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/M2RBrowser;->initializeButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/M2RBrowser;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/M2RBrowser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidBrowser$6;->this$0:Lcom/fusepowered/m2/m2l/M2RBrowser;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidBrowser$6;->this$0:Lcom/fusepowered/m2/m2l/M2RBrowser;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/M2RBrowser;->finish()V

    .line 197
    return-void
.end method
