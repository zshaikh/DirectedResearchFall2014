.class Ldolphin/webkit/hn;
.super Ljava/lang/Object;
.source "WebIconDatabaseClassic.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/hl;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/graphics/Bitmap;

.field private final d:Ldolphin/webkit/WebIconDatabase$IconListener;


# direct methods
.method constructor <init>(Ldolphin/webkit/hl;Ljava/lang/String;Landroid/graphics/Bitmap;Ldolphin/webkit/WebIconDatabase$IconListener;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Ldolphin/webkit/hn;->a:Ldolphin/webkit/hl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Ldolphin/webkit/hn;->b:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Ldolphin/webkit/hn;->c:Landroid/graphics/Bitmap;

    .line 67
    iput-object p4, p0, Ldolphin/webkit/hn;->d:Ldolphin/webkit/WebIconDatabase$IconListener;

    .line 68
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Ldolphin/webkit/hn;->d:Ldolphin/webkit/WebIconDatabase$IconListener;

    iget-object v1, p0, Ldolphin/webkit/hn;->b:Ljava/lang/String;

    iget-object v2, p0, Ldolphin/webkit/hn;->c:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Ldolphin/webkit/WebIconDatabase$IconListener;->onReceivedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 71
    return-void
.end method
