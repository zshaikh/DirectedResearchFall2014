.class Lcom/dolphin/browser/downloads/d;
.super Ljava/lang/Object;
.source "DownloadFileInfo.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/io/FileOutputStream;

.field c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/dolphin/browser/downloads/d;->a:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/dolphin/browser/downloads/d;->b:Ljava/io/FileOutputStream;

    .line 17
    iput p3, p0, Lcom/dolphin/browser/downloads/d;->c:I

    .line 18
    return-void
.end method
