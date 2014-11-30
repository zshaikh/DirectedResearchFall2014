.class public abstract Lcom/gamesys/android/common/tools/fwk/AbstractContext;
.super Lcom/adobe/fre/FREContext;
.source "AbstractContext.java"

# interfaces
.implements Lcom/gamesys/android/common/tools/fwk/INativeContext;


# instance fields
.field private cdl:Ljava/util/concurrent/CountDownLatch;

.field private context:Landroid/content/Context;

.field private extensionId:Ljava/lang/String;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gamesys/android/common/tools/fwk/IStatusEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Landroid/app/ProgressDialog;

.field private unitTestingFlag:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "extensionIdentifier"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->listeners:Ljava/util/List;

    .line 26
    iput-object v2, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->context:Landroid/content/Context;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->unitTestingFlag:Z

    .line 32
    iput-object v2, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->cdl:Ljava/util/concurrent/CountDownLatch;

    .line 35
    iput-object v2, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->extensionId:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->progressDialog:Landroid/app/ProgressDialog;

    .line 41
    iput-object p1, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->extensionId:Ljava/lang/String;

    .line 42
    return-void
.end method

.method protected static getMetadata(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "metadataName"    # Ljava/lang/String;

    .prologue
    .line 113
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 114
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    .line 115
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "sID":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 117
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 130
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "sID":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v2

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "getMetadata"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to find this metadata "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 126
    :catch_1
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "getMetadata"

    const-string v4, "Unknown exception "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public addStatusEventListnener(Lcom/gamesys/android/common/tools/fwk/IStatusEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/gamesys/android/common/tools/fwk/IStatusEventListener;

    .prologue
    .line 68
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    return-void
.end method

.method public dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "level"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v1, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->listeners:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->isUnitTesting()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.gamesys.android.ane.LEVEL_INTERNAL"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->getTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "event_level="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", event_code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gamesys/android/common/tools/fwk/AbstractExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_1
    return-void

    .line 54
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamesys/android/common/tools/fwk/IStatusEventListener;

    .line 55
    .local v0, "l":Lcom/gamesys/android/common/tools/fwk/IStatusEventListener;
    invoke-interface {v0, p1, p2}, Lcom/gamesys/android/common/tools/fwk/IStatusEventListener;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dispose"

    invoke-static {v0, v1}, Lcom/gamesys/android/common/tools/fwk/AbstractExtension;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->context:Landroid/content/Context;

    .line 82
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtensionIdendtifer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->extensionId:Ljava/lang/String;

    return-object v0
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 178
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "dialog.progress"

    new-instance v2, Lcom/gamesys/android/common/tools/ane/ShowIndeterminateProgressDialog;

    invoke-direct {v2}, Lcom/gamesys/android/common/tools/ane/ShowIndeterminateProgressDialog;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-object v0
.end method

.method public abstract getTAG()Ljava/lang/String;
.end method

.method public isUnitTesting()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->unitTestingFlag:Z

    return v0
.end method

.method public notifyActionDone()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public performProgressDialogAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 142
    const-string v0, "com.gamesys.android.ane.tools.PROGRESS_DIALOG_ACTION_SHOW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->progressDialog:Landroid/app/ProgressDialog;

    .line 145
    iget-object v0, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 149
    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 162
    :cond_1
    :goto_1
    return-void

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    goto :goto_0

    .line 157
    :cond_3
    const-string v0, "com.gamesys.android.ane.tools.PROGRESS_DIALOG_ACTION_HIDE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    goto :goto_1
.end method

.method public setAndroidContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->context:Landroid/content/Context;

    .line 76
    return-void
.end method

.method public setTestCounDownLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "cdl"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->cdl:Ljava/util/concurrent/CountDownLatch;

    .line 99
    return-void
.end method

.method public setUnitTestingFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/gamesys/android/common/tools/fwk/AbstractContext;->unitTestingFlag:Z

    .line 94
    return-void
.end method
