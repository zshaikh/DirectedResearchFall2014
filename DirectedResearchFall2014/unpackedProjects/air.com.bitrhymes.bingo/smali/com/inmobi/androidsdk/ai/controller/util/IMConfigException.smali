.class public final Lcom/inmobi/androidsdk/ai/controller/util/IMConfigException;
.super Ljava/lang/Exception;
.source "IMConfigException.java"


# static fields
.field public static final MISSING_ACTIVITY_DECLARATION:I = -0x2

.field public static final MISSING_CONFIG_CHANGES:I = -0x3

.field public static final MISSING_CONFIG_KEYBOARD:I = -0x4

.field public static final MISSING_CONFIG_KEYBOARDHIDDEN:I = -0x5

.field public static final MISSING_CONFIG_ORIENTATION:I = -0x6

.field public static final MISSING_CONFIG_SCREENSIZE:I = -0x7

.field public static final MISSING_CONFIG_SMALLEST_SCREENSIZE:I = -0x8

.field public static final MISSING_PERMISSION:I = -0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 67
    iput p1, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMConfigException;->a:I

    .line 68
    return-void
.end method


# virtual methods
.method public getExceptionCode()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMConfigException;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "IMConfigException : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 90
    iget v1, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMConfigException;->a:I

    packed-switch v1, :pswitch_data_0

    .line 116
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 92
    :pswitch_0
    const-string v1, "IMBrowserActivity not declared in the manifest. Please declare it in the app manifest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 95
    :pswitch_1
    const-string v1, "IMBrowserActivity in the manifest does not have android:configChanges attributes.Please add android:configChanges=keyboardHidden|orientation|keyboard|screenSize|smallestScreenSize to IMBrowserActivity in the app manifest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 98
    :pswitch_2
    const-string v1, "App does not have INTERNET permissions. Please provide INTERNET permissions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 101
    :pswitch_3
    const-string v1, "Missing Config keyboard from android:configChangesof IMBRowserActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 104
    :pswitch_4
    const-string v1, "Missing Config keyboardHidden from android:configChangesof IMBRowserActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 107
    :pswitch_5
    const-string v1, "Missing Config orientation from android:configChangesof IMBRowserActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 110
    :pswitch_6
    const-string v1, "Missing Config screenSize from android:configChangesof IMBRowserActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 113
    :pswitch_7
    const-string v1, "Missing Config smallestScreenSize from android:configChanges of IMBRowserActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
