.class public Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$Builder;
.super Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;
.source "FbSdkWebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase",
        "<",
        "Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Lcom/facebook/Session;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 545
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;-><init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 546
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 564
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 565
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
