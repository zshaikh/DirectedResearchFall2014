.class public Lcom/appoxee/RemoveTagFromDevice;
.super Ljava/lang/Object;
.source "RemoveTagFromDevice.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appoxee/RemoveTagFromDevice$RemoveTagAsync;
    }
.end annotation


# static fields
.field private static mGlobalContext:Lcom/adobe/fre/FREContext;


# instance fields
.field allTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDeviceTagsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRemovedTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/appoxee/RemoveTagFromDevice;->mDeviceTagsList:Ljava/util/ArrayList;

    .line 18
    iput-object v0, p0, Lcom/appoxee/RemoveTagFromDevice;->mRemovedTags:Ljava/util/ArrayList;

    .line 20
    iput-object v0, p0, Lcom/appoxee/RemoveTagFromDevice;->tag:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "passedArgs"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v3, 0x0

    .line 23
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "inside addTagToDevice"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/appoxee/RemoveTagFromDevice;->mRemovedTags:Ljava/util/ArrayList;

    .line 25
    sput-object p1, Lcom/appoxee/Appoxee;->freContext:Lcom/adobe/fre/FREContext;

    .line 28
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appoxee/RemoveTagFromDevice;->tag:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    .line 43
    :goto_0
    new-instance v1, Lcom/appoxee/RemoveTagFromDevice$RemoveTagAsync;

    invoke-direct {v1, p0}, Lcom/appoxee/RemoveTagFromDevice$RemoveTagAsync;-><init>(Lcom/appoxee/RemoveTagFromDevice;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/appoxee/RemoveTagFromDevice$RemoveTagAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 44
    const/4 v1, 0x0

    return-object v1

    .line 29
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 31
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 32
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 34
    .local v0, "e":Lcom/adobe/fre/FRETypeMismatchException;
    invoke-virtual {v0}, Lcom/adobe/fre/FRETypeMismatchException;->printStackTrace()V

    goto :goto_0

    .line 35
    .end local v0    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 37
    .local v0, "e":Lcom/adobe/fre/FREInvalidObjectException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    goto :goto_0

    .line 38
    .end local v0    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v1

    move-object v0, v1

    .line 40
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_0
.end method
