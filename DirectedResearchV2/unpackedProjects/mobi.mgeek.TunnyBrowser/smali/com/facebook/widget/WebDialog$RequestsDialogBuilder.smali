.class public Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;
.super Lcom/facebook/widget/WebDialog$BuilderBase;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/WebDialog$BuilderBase",
        "<",
        "Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;",
        ">;"
    }
.end annotation


# static fields
.field private static final APPREQUESTS_DIALOG:Ljava/lang/String; = "apprequests"

.field private static final DATA_PARAM:Ljava/lang/String; = "data"

.field private static final MESSAGE_PARAM:Ljava/lang/String; = "message"

.field private static final TITLE_PARAM:Ljava/lang/String; = "title"

.field private static final TO_PARAM:Ljava/lang/String; = "to"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 799
    const-string v0, "apprequests"

    invoke-direct {p0, p1, v0}, Lcom/facebook/widget/WebDialog$BuilderBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 800
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/Session;)V
    .locals 2

    .prologue
    .line 810
    const-string v0, "apprequests"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/widget/WebDialog$BuilderBase;-><init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 811
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 826
    const-string v0, "apprequests"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/widget/WebDialog$BuilderBase;-><init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 827
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 842
    const-string v0, "apprequests"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/widget/WebDialog$BuilderBase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 843
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/facebook/widget/WebDialog;
    .locals 1

    .prologue
    .line 785
    invoke-super {p0}, Lcom/facebook/widget/WebDialog$BuilderBase;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v0

    return-object v0
.end method

.method public setData(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;
    .locals 2

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;
    .locals 2

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;
    .locals 2

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;
    .locals 2

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "to"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    return-object p0
.end method
