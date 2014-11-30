.class public final enum Lcom/twitter/android/service/ScribeEvent;
.super Ljava/lang/Enum;


# static fields
.field public static final enum A:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum B:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum C:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum D:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum E:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum F:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum G:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum H:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum I:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum J:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum K:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum L:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum M:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum N:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum O:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum P:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum Q:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum R:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum S:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum T:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum U:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum V:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum W:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum X:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum Y:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum Z:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum a:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum aa:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum ab:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum ac:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum ad:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum ae:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum af:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum ag:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum ah:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum ai:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum aj:Lcom/twitter/android/service/ScribeEvent;

.field private static enum ak:Lcom/twitter/android/service/ScribeEvent;

.field private static final synthetic al:[Lcom/twitter/android/service/ScribeEvent;

.field public static final enum b:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum c:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum d:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum e:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum f:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum g:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum h:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum i:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum j:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum k:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum l:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum m:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum n:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum o:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum p:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum q:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum r:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum s:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum t:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum u:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum v:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum w:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum x:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum y:Lcom/twitter/android/service/ScribeEvent;

.field public static final enum z:Lcom/twitter/android/service/ScribeEvent;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "HOME"

    const-string v2, "home:::impression"

    invoke-direct {v0, v1, v4, v2}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->a:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "USER_TIMELINE"

    const-string v2, "profile:timeline::impression"

    invoke-direct {v0, v1, v5, v2}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->b:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "SEARCH_RESULTS"

    const-string v2, "search:::impression"

    invoke-direct {v0, v1, v6, v2}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->c:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "FAVORITES"

    const-string v2, "favorites:::impression"

    invoke-direct {v0, v1, v7, v2}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->d:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "MESSAGES"

    const-string v2, "messages:::impression"

    invoke-direct {v0, v1, v8, v2}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->e:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "OWN_LISTS"

    const/4 v2, 0x5

    const-string v3, "own_lists:::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->f:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "LIST"

    const/4 v2, 0x6

    const-string v3, "list:::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->g:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "USERS_FOLLOWING"

    const/4 v2, 0x7

    const-string v3, "following:::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->h:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "USERS_FOLLOWERS"

    const/16 v2, 0x8

    const-string v3, "followers:::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->i:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "SLUG"

    const/16 v2, 0x9

    const-string v3, "interests:::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->j:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "SEARCH"

    const/16 v2, 0xa

    const-string v3, "searches:::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->ak:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "COMPOSE_TWEET"

    const/16 v2, 0xb

    const-string v3, ":composition::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->k:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "HOME_GET_NEW"

    const/16 v2, 0xc

    const-string v3, "home:::get_newer"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->l:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "HOME_GET_MIDDLE"

    const/16 v2, 0xd

    const-string v3, "home:::get_middle"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->m:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "HOME_GET_OLDER"

    const/16 v2, 0xe

    const-string v3, "home:::get_older"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->n:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "API_REQUEST"

    const/16 v2, 0xf

    const-string v3, "api:::request"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->o:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "TWEET_VIEW"

    const/16 v2, 0x10

    const-string v3, "tweet::tweet:impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->p:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "TWEET_RT"

    const/16 v2, 0x11

    const-string v3, "::tweet:retweet"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->q:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "TWEET_REPLY"

    const/16 v2, 0x12

    const-string v3, "::tweet:reply"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->r:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "TWEET_QUOTE"

    const/16 v2, 0x13

    const-string v3, "::tweet:quote"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->s:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "TWEET_OPEN_URL"

    const/16 v2, 0x14

    const-string v3, "::tweet:open_link"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->t:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "TWEET_FAVORITE"

    const/16 v2, 0x15

    const-string v3, "::tweet:favorite"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->u:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "TWEET_SHARE"

    const/16 v2, 0x16

    const-string v3, "::tweet:share"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->v:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "USER_PROFILE"

    const/16 v2, 0x17

    const-string v3, "profile:profile::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->w:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "PROFILE_FOLLOW"

    const/16 v2, 0x18

    const-string v3, "profile:profile::follow"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->x:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "PROFILE_UNFOLLOW"

    const/16 v2, 0x19

    const-string v3, "profile:profile::unfollow"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->y:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "PROFILE_SIMILAR_TO_FOLLOW"

    const/16 v2, 0x1a

    const-string v3, "profile:similar_to::follow"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->z:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "PROFILE_SIMILAR_TO_UNFOLLOW"

    const/16 v2, 0x1b

    const-string v3, "profile:similar_to::unfollow"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->A:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "CONNECT_ACTIVITY"

    const/16 v2, 0x1c

    const-string v3, "connect:activity::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->B:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "CONNECT_MENTIONS"

    const/16 v2, 0x1d

    const-string v3, "connect:mentions::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->C:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "ME"

    const/16 v2, 0x1e

    const-string v3, "me:::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->D:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "SIGNUP"

    const/16 v2, 0x1f

    const-string v3, "signup:::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->E:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "SIGNUP_FORM_FULLNAME_FAILURE"

    const/16 v2, 0x20

    const-string v3, "signup:form:fullname:failure"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->F:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "SIGNUP_FORM_SCREENNAME_FAILURE"

    const/16 v2, 0x21

    const-string v3, "signup:form:screen_name:failure"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->G:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "SIGNUP_FORM_EMAIL_FAILURE"

    const/16 v2, 0x22

    const-string v3, "signup:form:email:failure"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->H:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "SIGNUP_FORM_PASSWORD_FAILURE"

    const/16 v2, 0x23

    const-string v3, "signup:form:password:failure"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->I:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "SIGNUP_FORM_CAPTCHA"

    const/16 v2, 0x24

    const-string v3, "signup:form:captcha:show"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->J:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "SIGNUP_FORM_SUCCESS"

    const/16 v2, 0x25

    const-string v3, "signup:form::success"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->K:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "SIGNUP_FORM_FAILURE"

    const/16 v2, 0x26

    const-string v3, "signup:form::failure"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->L:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "WELCOME"

    const/16 v2, 0x27

    const-string v3, "welcome:::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->M:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "WELCOME_WTF"

    const/16 v2, 0x28

    const-string v3, "welcome:who_to_follow::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->N:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "WELCOME_MATCHES_FOLLOW"

    const/16 v2, 0x29

    const-string v3, "welcome:matches::follow"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->O:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "WELCOME_MATCHES_IMPRESSION"

    const/16 v2, 0x2a

    const-string v3, "welcome:matches::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->P:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "WELCOME_SUGGESTIONS_FOLLOW"

    const/16 v2, 0x2b

    const-string v3, "welcome:suggestions::follow"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->Q:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "WELCOME_CATEGORY_FOLLOW"

    const/16 v2, 0x2c

    const-string v3, "welcome:category::follow"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->R:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "SIGNED_OUT_FRONT"

    const/16 v2, 0x2d

    const-string v3, "front:::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->S:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "NOTIFICATION_OPEN"

    const/16 v2, 0x2e

    const-string v3, "notification:::open"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->T:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "PHOTO_VIEW"

    const/16 v2, 0x2f

    const-string v3, "tweet::photo:impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->U:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "INSTALL_REFERRAL"

    const/16 v2, 0x30

    const-string v3, "external:::referred"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->V:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "WIDGET_CLICK"

    const/16 v2, 0x31

    const-string v3, "widget:::click"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->W:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "DISCOVER"

    const/16 v2, 0x32

    const-string v3, "discover:::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->X:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "DISCOVER_MATCHES_IMPRESSION"

    const/16 v2, 0x33

    const-string v3, "discover:matches::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->Y:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "DISCOVER_MATCHES_FOLLOW"

    const/16 v2, 0x34

    const-string v3, "discover:matches::follow"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->Z:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "DISCOVER_CARD_NEWS_CLICK"

    const/16 v2, 0x35

    const-string v3, "discover:discover:card_news:search"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->aa:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "DISCOVER_CARD_TOPIC_CLICK"

    const/16 v2, 0x36

    const-string v3, "discover:discover:card_topic:search"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->ab:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "DISCOVER_CARD_NEWS_OPEN_LINK"

    const/16 v2, 0x37

    const-string v3, "discover:discover:card_news:open_link"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->ac:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "DISCOVER_CARD_IMAGE_CLICK"

    const/16 v2, 0x38

    const-string v3, "discover:discover:image_card_topic:click"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->ad:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "DISCOVER_STORIES_IMPRESSION"

    const/16 v2, 0x39

    const-string v3, "discover_stories:::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->ae:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "DISCOVER_STORIES_CARD_NEWS_CLICK"

    const/16 v2, 0x3a

    const-string v3, "discover_stories::card_news:search"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->af:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "DISCOVER_STORIES_CARD_TOPIC_CLICK"

    const/16 v2, 0x3b

    const-string v3, "discover_stories::card_topic:search"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->ag:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "DISCOVER_STORIES_CARD_NEWS_OPEN_LINK"

    const/16 v2, 0x3c

    const-string v3, "discover_stories::card_news:open_link"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->ah:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "DISCOVER_STORIES_CARD_IMAGE_CLICK"

    const/16 v2, 0x3d

    const-string v3, "discover_stories::image_card_topic:click"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->ai:Lcom/twitter/android/service/ScribeEvent;

    new-instance v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v1, "WTF"

    const/16 v2, 0x3e

    const-string v3, "who_to_follow:::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/ScribeEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->aj:Lcom/twitter/android/service/ScribeEvent;

    const/16 v0, 0x3f

    new-array v0, v0, [Lcom/twitter/android/service/ScribeEvent;

    sget-object v1, Lcom/twitter/android/service/ScribeEvent;->a:Lcom/twitter/android/service/ScribeEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twitter/android/service/ScribeEvent;->b:Lcom/twitter/android/service/ScribeEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/twitter/android/service/ScribeEvent;->c:Lcom/twitter/android/service/ScribeEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/twitter/android/service/ScribeEvent;->d:Lcom/twitter/android/service/ScribeEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/twitter/android/service/ScribeEvent;->e:Lcom/twitter/android/service/ScribeEvent;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->f:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->g:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->h:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->i:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->j:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->ak:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->k:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->l:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->m:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->n:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->o:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->p:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->q:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->r:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->s:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->t:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->u:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->v:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->w:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->x:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->y:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->z:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->A:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->B:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->C:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->D:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->E:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->F:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->G:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->H:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->I:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->J:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->K:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->L:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->M:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->N:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->O:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->P:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->Q:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->R:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->S:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->T:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->U:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->V:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->W:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->X:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->Y:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->Z:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->aa:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->ab:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->ac:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->ad:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->ae:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->af:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->ag:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->ah:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->ai:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->aj:Lcom/twitter/android/service/ScribeEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/service/ScribeEvent;->al:[Lcom/twitter/android/service/ScribeEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/service/ScribeEvent;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/android/service/ScribeEvent;
    .locals 1

    const-class v0, Lcom/twitter/android/service/ScribeEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/service/ScribeEvent;

    return-object v0
.end method

.method public static values()[Lcom/twitter/android/service/ScribeEvent;
    .locals 1

    sget-object v0, Lcom/twitter/android/service/ScribeEvent;->al:[Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0}, [Lcom/twitter/android/service/ScribeEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/service/ScribeEvent;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/service/ScribeEvent;->mName:Ljava/lang/String;

    return-object v0
.end method
