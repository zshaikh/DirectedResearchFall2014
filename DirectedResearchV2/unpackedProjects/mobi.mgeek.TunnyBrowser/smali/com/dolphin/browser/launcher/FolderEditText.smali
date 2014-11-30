.class public Lcom/dolphin/browser/launcher/FolderEditText;
.super Landroid/widget/EditText;
.source "FolderEditText.java"


# instance fields
.field private a:Lcom/dolphin/browser/launcher/Folder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/launcher/Folder;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/dolphin/browser/launcher/FolderEditText;->a:Lcom/dolphin/browser/launcher/Folder;

    .line 26
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderEditText;->a:Lcom/dolphin/browser/launcher/Folder;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/launcher/FolderEditText;->a:Lcom/dolphin/browser/launcher/Folder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/Folder;->a(Z)V

    .line 35
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
