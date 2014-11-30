.class public Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$RequestsDialogBuilder;
.super Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;
.source "FbSdkWebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestsDialogBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase",
        "<",
        "Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$RequestsDialogBuilder;",
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
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/Session;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Lcom/facebook/Session;

    .prologue
    .line 738
    const-string v0, "apprequests"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;-><init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 739
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Lcom/facebook/Session;
    .param p3, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 755
    const-string v0, "apprequests"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;-><init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 756
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->build()Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    move-result-object v0

    return-object v0
.end method

.method public setData(Ljava/lang/String;)Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$RequestsDialogBuilder;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$RequestsDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$RequestsDialogBuilder;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 767
    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$RequestsDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    return-object p0
.end method

.method public bridge synthetic setOnCompleteListener(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;)Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->setOnCompleteListener(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;)Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setTheme(I)Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->setTheme(I)Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$RequestsDialogBuilder;
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 807
    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$RequestsDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$RequestsDialogBuilder;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$RequestsDialogBuilder;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "to"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    return-object p0
.end method
