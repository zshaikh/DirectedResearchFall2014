.class public Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuAdapter;
.super Lcom/dolphin/browser/core/a;
.source "MenuBuilder.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/ui/menu/MenuBuilder;I)V
    .locals 0

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuAdapter;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-direct {p0}, Lcom/dolphin/browser/core/a;-><init>()V

    .line 1169
    iput p2, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuAdapter;->b:I

    .line 1170
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuAdapter;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-static {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->d(Lcom/dolphin/browser/ui/menu/MenuBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1182
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuAdapter;->notifyDataSetChanged()V

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuAdapter;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuAdapter;->getOffset()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Lcom/dolphin/browser/ui/menu/e;
    .locals 2

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuAdapter;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-static {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->d(Lcom/dolphin/browser/ui/menu/MenuBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuAdapter;->notifyDataSetChanged()V

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuAdapter;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuAdapter;->getOffset()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/menu/e;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1164
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuAdapter;->getItem(I)Lcom/dolphin/browser/ui/menu/e;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 1197
    int-to-long v0, p1

    return-wide v0
.end method

.method public getOffset()I
    .locals 2

    .prologue
    .line 1173
    iget v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuAdapter;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuAdapter;->a:Lcom/dolphin/browser/ui/menu/MenuBuilder;

    invoke-static {v0}, Lcom/dolphin/browser/ui/menu/MenuBuilder;->c(Lcom/dolphin/browser/ui/menu/MenuBuilder;)I

    move-result v0

    .line 1176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView2(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 1201
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuAdapter;->getItem(I)Lcom/dolphin/browser/ui/menu/e;

    move-result-object v0

    iget v1, p0, Lcom/dolphin/browser/ui/menu/MenuBuilder$MenuAdapter;->b:I

    invoke-virtual {v0, v1, p3}, Lcom/dolphin/browser/ui/menu/e;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
