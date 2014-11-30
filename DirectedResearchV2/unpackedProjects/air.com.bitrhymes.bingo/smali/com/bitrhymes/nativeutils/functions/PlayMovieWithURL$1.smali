.class Lcom/bitrhymes/nativeutils/functions/PlayMovieWithURL$1;
.super Ljava/lang/Object;
.source "PlayMovieWithURL.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitrhymes/nativeutils/functions/PlayMovieWithURL;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bitrhymes/nativeutils/functions/PlayMovieWithURL;

.field private final synthetic val$videoView:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Lcom/bitrhymes/nativeutils/functions/PlayMovieWithURL;Landroid/widget/VideoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bitrhymes/nativeutils/functions/PlayMovieWithURL$1;->this$0:Lcom/bitrhymes/nativeutils/functions/PlayMovieWithURL;

    iput-object p2, p0, Lcom/bitrhymes/nativeutils/functions/PlayMovieWithURL$1;->val$videoView:Landroid/widget/VideoView;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bitrhymes/nativeutils/functions/PlayMovieWithURL$1;->this$0:Lcom/bitrhymes/nativeutils/functions/PlayMovieWithURL;

    # getter for: Lcom/bitrhymes/nativeutils/functions/PlayMovieWithURL;->mContext:Lcom/adobe/fre/FREContext;
    invoke-static {v0}, Lcom/bitrhymes/nativeutils/functions/PlayMovieWithURL;->access$0(Lcom/bitrhymes/nativeutils/functions/PlayMovieWithURL;)Lcom/adobe/fre/FREContext;

    move-result-object v0

    const-string v1, "MOVIE_PLAY_STARTED"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "Video View "

    const-string v1, " onPrepared  "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/bitrhymes/nativeutils/functions/PlayMovieWithURL$1;->val$videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 46
    return-void
.end method
