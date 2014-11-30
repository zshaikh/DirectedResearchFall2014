.class Lcom/dolphin/browser/t/b;
.super Ljava/lang/Object;
.source "DownloadHandler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/dolphin/browser/t/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/a;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/dolphin/browser/t/b;->b:Lcom/dolphin/browser/t/a;

    iput-object p2, p0, Lcom/dolphin/browser/t/b;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 201
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/t/b;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    return-void

    .line 201
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
