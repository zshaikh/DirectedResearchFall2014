.class public Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;
.super Lcom/facebook/widget/FacebookDialog$Builder;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/FacebookDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenGraphActionDialogBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/FacebookDialog$Builder",
        "<",
        "Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private action:Lcom/facebook/model/OpenGraphAction;

.field private actionType:Ljava/lang/String;

.field private dataErrorsFatal:Z

.field private imageAttachmentFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private imageAttachments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private previewPropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/model/OpenGraphAction;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "action"    # Lcom/facebook/model/OpenGraphAction;
    .param p3, "previewPropertyName"    # Ljava/lang/String;

    .prologue
    .line 637
    invoke-direct {p0, p1}, Lcom/facebook/widget/FacebookDialog$Builder;-><init>(Landroid/app/Activity;)V

    .line 639
    const-string v0, "action"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 640
    invoke-interface {p2}, Lcom/facebook/model/OpenGraphAction;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action.getType()"

    invoke-static {v0, v1}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v0, "previewPropertyName"

    invoke-static {p3, v0}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-interface {p2, p3}, Lcom/facebook/model/OpenGraphAction;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 643
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 644
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A property named \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" was not found on the action.  The name of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 645
    const-string v2, "the preview property must match the name of an action property."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 644
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 643
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_0
    iput-object p2, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->action:Lcom/facebook/model/OpenGraphAction;

    .line 649
    invoke-interface {p2}, Lcom/facebook/model/OpenGraphAction;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->actionType:Ljava/lang/String;

    .line 650
    iput-object p3, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->previewPropertyName:Ljava/lang/String;

    .line 651
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/model/OpenGraphAction;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "action"    # Lcom/facebook/model/OpenGraphAction;
    .param p3, "actionType"    # Ljava/lang/String;
    .param p4, "previewPropertyName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 605
    invoke-direct {p0, p1}, Lcom/facebook/widget/FacebookDialog$Builder;-><init>(Landroid/app/Activity;)V

    .line 607
    const-string v1, "action"

    invoke-static {p2, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    const-string v1, "actionType"

    invoke-static {p3, v1}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v1, "previewPropertyName"

    invoke-static {p4, v1}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-interface {p2, p4}, Lcom/facebook/model/OpenGraphAction;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 611
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "A property named \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" was not found on the action.  The name of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 613
    const-string v3, "the preview property must match the name of an action property."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 612
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 611
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 615
    :cond_0
    invoke-interface {p2}, Lcom/facebook/model/OpenGraphAction;->getType()Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "typeOnAction":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 617
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'actionType\' must match the type of \'action\' if it is specified. Consider using OpenGraphActionDialogBuilder(Activity activity, OpenGraphAction action, String previewPropertyName) instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 621
    :cond_1
    iput-object p2, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->action:Lcom/facebook/model/OpenGraphAction;

    .line 622
    iput-object p3, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->actionType:Ljava/lang/String;

    .line 623
    iput-object p4, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->previewPropertyName:Ljava/lang/String;

    .line 624
    return-void
.end method

.method static synthetic access$5(Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->imageAttachments:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$6(Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->imageAttachmentFiles:Ljava/util/HashMap;

    return-object v0
.end method

.method private addImageAttachment(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;
    .locals 1
    .param p1, "imageName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->imageAttachments:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1016
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->imageAttachments:Ljava/util/HashMap;

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->imageAttachments:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    return-object p0
.end method

.method private addImageAttachment(Ljava/lang/String;Ljava/io/File;)Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;
    .locals 1
    .param p1, "imageName"    # Ljava/lang/String;
    .param p2, "attachment"    # Ljava/io/File;

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->imageAttachmentFiles:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1024
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->imageAttachmentFiles:Ljava/util/HashMap;

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->imageAttachmentFiles:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    return-object p0
.end method

.method private addImageAttachmentFiles(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 954
    .local p1, "bitmapFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 955
    .local v1, "attachmentUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 965
    return-object v1

    .line 955
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 956
    .local v2, "bitmapFile":Ljava/io/File;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 958
    .local v0, "attachmentName":Ljava/lang/String;
    invoke-direct {p0, v0, v2}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->addImageAttachment(Ljava/lang/String;Ljava/io/File;)Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;

    .line 960
    iget-object v5, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->applicationId:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v6}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/facebook/NativeAppCallContentProvider;->getAttachmentUrl(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 962
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addImageAttachments(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 939
    .local p1, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 940
    .local v1, "attachmentUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 950
    return-object v1

    .line 940
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 941
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 943
    .local v0, "attachmentName":Ljava/lang/String;
    invoke-direct {p0, v0, v2}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->addImageAttachment(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;

    .line 945
    iget-object v5, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->applicationId:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v6}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/facebook/NativeAppCallContentProvider;->getAttachmentUrl(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 947
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private flattenChildrenOfGraphObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "graphObject"    # Lorg/json/JSONObject;

    .prologue
    .line 1033
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1036
    .end local p1    # "graphObject":Lorg/json/JSONObject;
    .local v1, "graphObject":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1037
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1048
    return-object v1

    .line 1038
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1040
    .local v2, "key":Ljava/lang/String;
    const-string v5, "image"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1041
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1043
    .local v4, "object":Ljava/lang/Object;
    invoke-direct {p0, v4}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->flattenObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1044
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1049
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v0

    move-object p1, v1

    .line 1050
    .end local v1    # "graphObject":Lorg/json/JSONObject;
    .local v0, "e":Lorg/json/JSONException;
    .restart local p1    # "graphObject":Lorg/json/JSONObject;
    :goto_1
    new-instance v5, Lcom/facebook/FacebookException;

    invoke-direct {v5, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1049
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private flattenObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1055
    if-nez p1, :cond_1

    .line 1056
    const/4 p1, 0x0

    .line 1083
    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p1

    .line 1059
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v5, p1, Lorg/json/JSONObject;

    if-eqz v5, :cond_3

    move-object v2, p1

    .line 1060
    check-cast v2, Lorg/json/JSONObject;

    .line 1063
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "fbsdk:create_object"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1066
    const-string v5, "id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1067
    const-string v5, "id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1068
    :cond_2
    const-string v5, "url"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1069
    const-string v5, "url"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1071
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    instance-of v5, p1, Lorg/json/JSONArray;

    if-eqz v5, :cond_0

    move-object v1, p1

    .line 1072
    check-cast v1, Lorg/json/JSONArray;

    .line 1073
    .local v1, "jsonArray":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 1074
    .local v4, "newArray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 1076
    .local v3, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v3, :cond_4

    move-object p1, v4

    .line 1080
    goto :goto_0

    .line 1077
    :cond_4
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->flattenObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1076
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateActionAttachmentUrls(Ljava/util/List;Z)V
    .locals 7
    .param p2, "isUserGenerated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 761
    .local p1, "attachmentUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->action:Lcom/facebook/model/OpenGraphAction;

    invoke-interface {v4}, Lcom/facebook/model/OpenGraphAction;->getImage()Ljava/util/List;

    move-result-object v0

    .line 762
    .local v0, "attachments":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    if-nez v0, :cond_0

    .line 763
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "attachments":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 766
    .restart local v0    # "attachments":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 778
    iget-object v4, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->action:Lcom/facebook/model/OpenGraphAction;

    invoke-interface {v4, v0}, Lcom/facebook/model/OpenGraphAction;->setImage(Ljava/util/List;)V

    .line 779
    return-void

    .line 766
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 767
    .local v3, "url":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 769
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "url"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 770
    if-eqz p2, :cond_2

    .line 771
    const-string v5, "user_generated"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 773
    :catch_0
    move-exception v1

    .line 774
    .local v1, "e":Lorg/json/JSONException;
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "Unable to attach images"

    invoke-direct {v4, v5, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public bridge synthetic build()Lcom/facebook/widget/FacebookDialog;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->build()Lcom/facebook/widget/FacebookDialog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic canPresent()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->canPresent()Z

    move-result v0

    return v0
.end method

.method getImageAttachmentNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 969
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->imageAttachments:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getOnPresentCallback()Lcom/facebook/widget/FacebookDialog$OnPresentCallback;
    .locals 1

    .prologue
    .line 999
    new-instance v0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder$1;

    invoke-direct {v0, p0}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder$1;-><init>(Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;)V

    return-object v0
.end method

.method handleBuild(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 979
    const-string v4, "com.facebook.platform.extra.PREVIEW_PROPERTY_NAME"

    iget-object v5, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->previewPropertyName:Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v5}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const-string v4, "com.facebook.platform.extra.ACTION_TYPE"

    iget-object v5, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->actionType:Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v5}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const-string v4, "com.facebook.platform.extra.DATA_FAILURES_FATAL"

    iget-boolean v5, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->dataErrorsFatal:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 983
    iget-object v4, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->action:Lcom/facebook/model/OpenGraphAction;

    invoke-interface {v4}, Lcom/facebook/model/OpenGraphAction;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 984
    .local v1, "jsonAction":Lorg/json/JSONObject;
    invoke-direct {p0, v1}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->flattenChildrenOfGraphObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 986
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 987
    .local v2, "jsonString":Ljava/lang/String;
    const-string v4, "com.facebook.platform.extra.ACTION"

    invoke-virtual {p0, p1, v4, v2}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object v4, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->activity:Landroid/app/Activity;

    const v5, 0x1332b3a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    # invokes: Lcom/facebook/widget/FacebookDialog;->getProtocolVersionForNativeDialog(Landroid/content/Context;Ljava/lang/Integer;)I
    invoke-static {v4, v5}, Lcom/facebook/widget/FacebookDialog;->access$1(Landroid/content/Context;Ljava/lang/Integer;)I

    move-result v3

    .line 991
    .local v3, "protocolVersion":I
    iget-object v4, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->activity:Landroid/app/Activity;

    .line 992
    const-string v5, "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"

    .line 991
    invoke-static {v4, v5, v3, p1}, Lcom/facebook/internal/NativeProtocol;->createPlatformActivityIntent(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 994
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method handleCanPresent()Z
    .locals 4

    .prologue
    .line 974
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;

    const/4 v2, 0x0

    sget-object v3, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;->OG_ACTION_DIALOG:Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/widget/FacebookDialog;->canPresentOpenGraphActionDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setApplicationName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$Builder;->setApplicationName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDataErrorsFatal(Z)Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;
    .locals 0
    .param p1, "dataErrorsFatal"    # Z

    .prologue
    .line 660
    iput-boolean p1, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->dataErrorsFatal:Z

    .line 661
    return-object p0
.end method

.method public bridge synthetic setFragment(Landroid/support/v4/app/Fragment;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$Builder;->setFragment(Landroid/support/v4/app/Fragment;)Lcom/facebook/widget/FacebookDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setImageAttachmentFilesForAction(Ljava/util/List;)Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;"
        }
    .end annotation

    .prologue
    .line 727
    .local p1, "bitmapFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->setImageAttachmentFilesForAction(Ljava/util/List;Z)Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setImageAttachmentFilesForAction(Ljava/util/List;Z)Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;
    .locals 3
    .param p2, "isUserGenerated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;Z)",
            "Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;"
        }
    .end annotation

    .prologue
    .line 749
    .local p1, "bitmapFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const-string v1, "bitmapFiles"

    invoke-static {p1, v1}, Lcom/facebook/internal/Validate;->containsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 750
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->action:Lcom/facebook/model/OpenGraphAction;

    if-nez v1, :cond_0

    .line 751
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Can not set attachments prior to setting action."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 754
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->addImageAttachmentFiles(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 755
    .local v0, "attachmentUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v0, p2}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->updateActionAttachmentUrls(Ljava/util/List;Z)V

    .line 757
    return-object p0
.end method

.method public setImageAttachmentFilesForObject(Ljava/lang/String;Ljava/util/List;)Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;
    .locals 1
    .param p1, "objectProperty"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;"
        }
    .end annotation

    .prologue
    .line 867
    .local p2, "bitmapFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->setImageAttachmentFilesForObject(Ljava/lang/String;Ljava/util/List;Z)Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setImageAttachmentFilesForObject(Ljava/lang/String;Ljava/util/List;Z)Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;
    .locals 3
    .param p1, "objectProperty"    # Ljava/lang/String;
    .param p3, "isUserGenerated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;Z)",
            "Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;"
        }
    .end annotation

    .prologue
    .line 896
    .local p2, "bitmapFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const-string v1, "objectProperty"

    invoke-static {p1, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 897
    const-string v1, "bitmapFiles"

    invoke-static {p2, v1}, Lcom/facebook/internal/Validate;->containsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 898
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->action:Lcom/facebook/model/OpenGraphAction;

    if-nez v1, :cond_0

    .line 899
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Can not set attachments prior to setting action."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 902
    :cond_0
    invoke-direct {p0, p2}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->addImageAttachmentFiles(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 903
    .local v0, "attachmentUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v0, p3}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->updateObjectAttachmentUrls(Ljava/lang/String;Ljava/util/List;Z)V

    .line 905
    return-object p0
.end method

.method public setImageAttachmentsForAction(Ljava/util/List;)Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;"
        }
    .end annotation

    .prologue
    .line 679
    .local p1, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->setImageAttachmentsForAction(Ljava/util/List;Z)Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setImageAttachmentsForAction(Ljava/util/List;Z)Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;
    .locals 3
    .param p2, "isUserGenerated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;"
        }
    .end annotation

    .prologue
    .line 701
    .local p1, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const-string v1, "bitmaps"

    invoke-static {p1, v1}, Lcom/facebook/internal/Validate;->containsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 702
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->action:Lcom/facebook/model/OpenGraphAction;

    if-nez v1, :cond_0

    .line 703
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Can not set attachments prior to setting action."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 706
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->addImageAttachments(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 707
    .local v0, "attachmentUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v0, p2}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->updateActionAttachmentUrls(Ljava/util/List;Z)V

    .line 709
    return-object p0
.end method

.method public setImageAttachmentsForObject(Ljava/lang/String;Ljava/util/List;)Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;
    .locals 1
    .param p1, "objectProperty"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;"
        }
    .end annotation

    .prologue
    .line 803
    .local p2, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->setImageAttachmentsForObject(Ljava/lang/String;Ljava/util/List;Z)Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setImageAttachmentsForObject(Ljava/lang/String;Ljava/util/List;Z)Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;
    .locals 3
    .param p1, "objectProperty"    # Ljava/lang/String;
    .param p3, "isUserGenerated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;"
        }
    .end annotation

    .prologue
    .line 833
    .local p2, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const-string v1, "objectProperty"

    invoke-static {p1, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 834
    const-string v1, "bitmaps"

    invoke-static {p2, v1}, Lcom/facebook/internal/Validate;->containsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 835
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->action:Lcom/facebook/model/OpenGraphAction;

    if-nez v1, :cond_0

    .line 836
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Can not set attachments prior to setting action."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 839
    :cond_0
    invoke-direct {p0, p2}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->addImageAttachments(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 840
    .local v0, "attachmentUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v0, p3}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->updateObjectAttachmentUrls(Ljava/lang/String;Ljava/util/List;Z)V

    .line 842
    return-object p0
.end method

.method public bridge synthetic setRequestCode(I)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$Builder;->setRequestCode(I)Lcom/facebook/widget/FacebookDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method updateObjectAttachmentUrls(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 8
    .param p1, "objectProperty"    # Ljava/lang/String;
    .param p3, "isUserGenerated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 911
    .local p2, "attachmentUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v5, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->action:Lcom/facebook/model/OpenGraphAction;

    const-class v6, Lcom/facebook/model/OpenGraphObject;

    invoke-interface {v5, p1, v6}, Lcom/facebook/model/OpenGraphAction;->getPropertyAs(Ljava/lang/String;Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v3

    check-cast v3, Lcom/facebook/model/OpenGraphObject;

    .line 912
    .local v3, "object":Lcom/facebook/model/OpenGraphObject;
    if-nez v3, :cond_0

    .line 913
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Action does not contain a property \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/facebook/FacebookGraphObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    .end local v3    # "object":Lcom/facebook/model/OpenGraphObject;
    :catch_0
    move-exception v1

    .line 916
    .local v1, "exception":Lcom/facebook/FacebookGraphObjectException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Property \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is not a graph object"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 918
    .end local v1    # "exception":Lcom/facebook/FacebookGraphObjectException;
    .restart local v3    # "object":Lcom/facebook/model/OpenGraphObject;
    :cond_0
    invoke-interface {v3}, Lcom/facebook/model/OpenGraphObject;->getCreateObject()Z

    move-result v5

    if-nez v5, :cond_1

    .line 919
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 920
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "The Open Graph object in \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is not marked for creation"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 919
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 923
    :cond_1
    invoke-interface {v3}, Lcom/facebook/model/OpenGraphObject;->getImage()Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    .line 924
    .local v0, "attachments":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<Lcom/facebook/model/GraphObject;>;"
    if-nez v0, :cond_2

    .line 925
    const-class v5, Lcom/facebook/model/GraphObject;

    invoke-static {v5}, Lcom/facebook/model/GraphObject$Factory;->createList(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    .line 927
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 935
    invoke-interface {v3, v0}, Lcom/facebook/model/OpenGraphObject;->setImage(Lcom/facebook/model/GraphObjectList;)V

    .line 936
    return-void

    .line 927
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 928
    .local v4, "url":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    move-result-object v2

    .line 929
    .local v2, "graphObject":Lcom/facebook/model/GraphObject;
    const-string v6, "url"

    invoke-interface {v2, v6, v4}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 930
    if-eqz p3, :cond_4

    .line 931
    const-string v6, "user_generated"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 933
    :cond_4
    invoke-interface {v0, v2}, Lcom/facebook/model/GraphObjectList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
