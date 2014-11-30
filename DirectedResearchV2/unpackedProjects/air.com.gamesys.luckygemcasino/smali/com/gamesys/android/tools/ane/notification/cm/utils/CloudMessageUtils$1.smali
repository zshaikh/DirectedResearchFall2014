.class Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;
.super Ljava/lang/Object;
.source "CloudMessageUtils.java"

# interfaces
.implements Lcom/gamesys/android/tools/ane/cache/IBitmapCreation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;->createNotificationFromBundle(Landroid/os/Bundle;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$errorUrlCount:[Ljava/lang/Integer;

.field private final synthetic val$final_appIdentifier:Ljava/lang/String;

.field private final synthetic val$final_i:I

.field private final synthetic val$final_key:Ljava/lang/String;

.field private final synthetic val$final_null_url_count:I

.field private final synthetic val$from:Ljava/lang/String;

.field private final synthetic val$id:I

.field private final synthetic val$map:Ljava/util/Map;

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$messageColorStr:Ljava/lang/String;

.field private final synthetic val$messageTextSize:I

.field private final synthetic val$replacePrevious:Z

.field private final synthetic val$textFieldsWidthSizePercent:I

.field private final synthetic val$ticker:Ljava/lang/String;

.field private final synthetic val$title:Ljava/lang/String;

.field private final synthetic val$titleColorStr:Ljava/lang/String;

.field private final synthetic val$titleTextSize:I

.field private final synthetic val$urls:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/Integer;[Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$errorUrlCount:[Ljava/lang/Integer;

    iput-object p2, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$urls:[Ljava/lang/String;

    iput p3, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$final_i:I

    iput-object p4, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$map:Ljava/util/Map;

    iput-object p5, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$final_key:Ljava/lang/String;

    iput p6, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$final_null_url_count:I

    iput-object p7, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$context:Landroid/content/Context;

    iput-object p8, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$title:Ljava/lang/String;

    iput-object p9, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$message:Ljava/lang/String;

    iput-object p10, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$ticker:Ljava/lang/String;

    iput p11, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$titleTextSize:I

    iput p12, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$messageTextSize:I

    iput-object p13, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$titleColorStr:Ljava/lang/String;

    iput-object p14, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$messageColorStr:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$from:Ljava/lang/String;

    move/from16 v0, p16

    iput v0, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$id:I

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$replacePrevious:Z

    move/from16 v0, p18

    iput v0, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$textFieldsWidthSizePercent:I

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$final_appIdentifier:Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private tryCreateNotification()V
    .locals 18

    .prologue
    .line 146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$urls:[Ljava/lang/String;

    array-length v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$final_null_url_count:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$errorUrlCount:[Ljava/lang/Integer;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    .line 148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/gamesys/android/tools/ane/ToolsExtension;->getContext()Lcom/gamesys/android/tools/ane/ToolsContext;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$message:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$ticker:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$titleTextSize:I

    .line 149
    move-object/from16 v0, p0

    iget v7, v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$messageTextSize:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$titleColorStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$messageColorStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$from:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$id:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$replacePrevious:Z

    move-object/from16 v0, p0

    iget v13, v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$textFieldsWidthSizePercent:I

    .line 150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$map:Ljava/util/Map;

    const-string v15, "icon_big_url"

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$map:Ljava/util/Map;

    const-string v16, "background_url"

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Bitmap;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$map:Ljava/util/Map;

    move-object/from16 v16, v0

    const-string v17, "icon_small_url"

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$final_appIdentifier:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 148
    invoke-static/range {v1 .. v17}, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;->createNotification(Landroid/content/Context;Lcom/adobe/fre/FREContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method


# virtual methods
.method public onBitmapCreated(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$map:Ljava/util/Map;

    iget-object v1, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$final_key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Picture #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " successfully loaded from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$urls:[Ljava/lang/String;

    iget v3, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$final_i:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->tryCreateNotification()V

    .line 139
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$errorUrlCount:[Ljava/lang/Integer;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 128
    sget-object v0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to load this picture "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$urls:[Ljava/lang/String;

    iget v3, p0, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->val$final_i:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    invoke-direct {p0}, Lcom/gamesys/android/tools/ane/notification/cm/utils/CloudMessageUtils$1;->tryCreateNotification()V

    .line 131
    return-void
.end method
