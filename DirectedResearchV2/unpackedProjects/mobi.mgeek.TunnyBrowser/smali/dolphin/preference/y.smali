.class Ldolphin/preference/y;
.super Ldolphin/preference/h;
.source "PreferenceInflater.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldolphin/preference/h",
        "<",
        "Ldolphin/preference/Preference;",
        "Ldolphin/preference/PreferenceGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ldolphin/preference/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldolphin/preference/z;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ldolphin/preference/h;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0, p2}, Ldolphin/preference/y;->a(Ldolphin/preference/z;)V

    .line 46
    return-void
.end method

.method private a(Ldolphin/preference/z;)V
    .locals 1

    .prologue
    .line 59
    iput-object p1, p0, Ldolphin/preference/y;->b:Ldolphin/preference/z;

    .line 60
    const-string v0, "dolphin.preference."

    invoke-virtual {p0, v0}, Ldolphin/preference/y;->a(Ljava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected a(Ldolphin/preference/PreferenceGroup;ZLdolphin/preference/PreferenceGroup;)Ldolphin/preference/PreferenceGroup;
    .locals 1

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    iget-object v0, p0, Ldolphin/preference/y;->b:Ldolphin/preference/z;

    invoke-virtual {p3, v0}, Ldolphin/preference/PreferenceGroup;->onAttachedToHierarchy(Ldolphin/preference/z;)V

    .line 97
    :goto_0
    return-object p3

    :cond_0
    move-object p3, p1

    goto :goto_0
.end method

.method protected bridge synthetic a(Ldolphin/preference/j;ZLdolphin/preference/j;)Ldolphin/preference/j;
    .locals 1

    .prologue
    .line 37
    check-cast p1, Ldolphin/preference/PreferenceGroup;

    check-cast p3, Ldolphin/preference/PreferenceGroup;

    invoke-virtual {p0, p1, p2, p3}, Ldolphin/preference/y;->a(Ldolphin/preference/PreferenceGroup;ZLdolphin/preference/PreferenceGroup;)Ldolphin/preference/PreferenceGroup;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ldolphin/preference/Preference;Landroid/util/AttributeSet;)Z
    .locals 4

    .prologue
    .line 66
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    const/4 v1, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Ldolphin/preference/y;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    :goto_0
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p2, v0}, Ldolphin/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 82
    :cond_0
    const/4 v0, 0x1

    .line 85
    :goto_1
    return v0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const-string v2, "PreferenceInflater"

    const-string v3, "Could not parse Intent."

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v2, "PreferenceInflater"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z
    .locals 1

    .prologue
    .line 37
    check-cast p2, Ldolphin/preference/Preference;

    invoke-virtual {p0, p1, p2, p3}, Ldolphin/preference/y;->a(Lorg/xmlpull/v1/XmlPullParser;Ldolphin/preference/Preference;Landroid/util/AttributeSet;)Z

    move-result v0

    return v0
.end method
