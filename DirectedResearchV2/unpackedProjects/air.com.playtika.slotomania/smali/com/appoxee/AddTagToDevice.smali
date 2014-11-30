.class public Lcom/appoxee/AddTagToDevice;
.super Ljava/lang/Object;
.source "AddTagToDevice.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appoxee/AddTagToDevice$AddTagsAsync;
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

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/appoxee/AddTagToDevice;->mDeviceTagsList:Ljava/util/ArrayList;

    .line 20
    iput-object v0, p0, Lcom/appoxee/AddTagToDevice;->tag:Ljava/lang/String;

    .line 15
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

    .line 25
    sput-object p1, Lcom/appoxee/Appoxee;->freContext:Lcom/adobe/fre/FREContext;

    .line 28
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appoxee/AddTagToDevice;->tag:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    .line 44
    :goto_0
    new-instance v1, Lcom/appoxee/AddTagToDevice$AddTagsAsync;

    invoke-direct {v1, p0}, Lcom/appoxee/AddTagToDevice$AddTagsAsync;-><init>(Lcom/appoxee/AddTagToDevice;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/appoxee/AddTagToDevice$AddTagsAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    const/4 v1, 0x0

    return-object v1

    .line 30
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 32
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 33
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 35
    .local v0, "e":Lcom/adobe/fre/FRETypeMismatchException;
    invoke-virtual {v0}, Lcom/adobe/fre/FRETypeMismatchException;->printStackTrace()V

    goto :goto_0

    .line 36
    .end local v0    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 38
    .local v0, "e":Lcom/adobe/fre/FREInvalidObjectException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    goto :goto_0

    .line 39
    .end local v0    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v1

    move-object v0, v1

    .line 41
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_0
.end method
