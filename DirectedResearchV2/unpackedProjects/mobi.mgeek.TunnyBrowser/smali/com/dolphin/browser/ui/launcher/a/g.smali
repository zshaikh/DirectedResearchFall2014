.class public final Lcom/dolphin/browser/ui/launcher/a/g;
.super Lcom/mgeek/android/util/h;
.source "HomeWorkspaceManager.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/launcher/a/d;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/ui/launcher/a/d;)V
    .locals 1

    .prologue
    .line 122
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/a/g;->a:Lcom/dolphin/browser/ui/launcher/a/d;

    .line 123
    const-string v0, "LauncherData"

    invoke-direct {p0, v0}, Lcom/mgeek/android/util/h;-><init>(Ljava/lang/String;)V

    .line 124
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lcom/dolphin/browser/f/c/a;->a()Lcom/dolphin/browser/f/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/f/c/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/json/JSONArray;[Lorg/apache/http/Header;)V
    .locals 3

    .prologue
    .line 134
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/g;->a:Lcom/dolphin/browser/ui/launcher/a/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/d;->d()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/IOUtilities;->saveToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-static {}, Lcom/dolphin/browser/ui/launcher/a/d;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to load home data."

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/a/g;->a:Lcom/dolphin/browser/ui/launcher/a/d;

    invoke-static {v1, v0}, Lcom/dolphin/browser/ui/launcher/a/d;->a(Lcom/dolphin/browser/ui/launcher/a/d;Ljava/lang/Exception;)V

    goto :goto_0
.end method
