import React from "react"

class Header extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            isPullDownMenuOpen: false,
            hamburgerImage: "close",
            pullDownMenu: "close",
            isPopupMenuOpen: false
        }
    }

    onClickHamburgerButton(){
        if(this.state.isPullDownMenuOpen){
            this.setState({isPullDownMenuOpen: false});
            this.setState({hamburgerImage: "close"});
            this.setState({pullDownMenu: "close"});
        }else{
            this.setState({isPullDownMenuOpen: true});
            this.setState({hamburgerImage: "open"});
            if(this.props.mode === "guest"){
                this.setState({pullDownMenu: "open-guest"});
            }
            if(this.props.mode === "user"){
                this.setState({pullDownMenu: "open-user"});
            }
        }
    }

    onClickUserButton(){
        this.setState({isPopupMenuOpen: !this.state.isPopupMenuOpen});
    }

    render() {
        let headerRightSide;
        let popupMenu;
        let pullDownMenuBottom;

        if(this.props.mode === "guest"){
            headerRightSide = (
                <div>
                    <a href={"/login"} className={'login-button'}><i className={'fas fa-sign-in-alt'} /> ログイン</a>
                </div>
            );
            pullDownMenuBottom = (
                <div className={"login"}>
                    <a href={"/login"}>ログイン</a>
                </div>
            );
        }

        if(this.props.mode === "user") {
            headerRightSide = (
                <div>
                    <a href={"/"} className={"attend-button"}>イベントに参加する</a>
                    <a href={"/"} className={"publish-button"}>作品を投稿する</a>
                    <button className={"user-button"} onClick={()=>{this.onClickUserButton()}}>
                        <img src={this.props.image} alt={''} />
                    </button>
                </div>
            );
            pullDownMenuBottom = (
                <div className={"user"}>
                    <div className={"image-name"}>
                        <img src={this.props.image} alt={""}/>
                        <p>{this.props.name}</p>
                    </div>
                    <ul>
                        <li>
                            <a href={"/"}>イベントに参加する</a>
                        </li>
                        <li>
                            <a href={"/"}>作品を投稿する</a>
                        </li>
                        <li>
                            <a href={"/"}>獲得アワード一覧</a>
                        </li>
                        <li>
                            <a href={"/"}>作品設定</a>
                        </li>
                        <li>
                            <a href={"/"}>アカウント設定</a>
                        </li>
                        <li>
                            <form action={"/logout"} method={"POST"}>
                                <button>ログアウト</button>
                            </form>
                        </li>
                    </ul>
                </div>
            );
        }

        if(this.state.isPopupMenuOpen){
            popupMenu = (
                <div className={"popup-menu"}>
                    <div className={"image-name"}>
                        <img src={this.props.image} alt={""}/>
                        <p>{this.props.name}</p>
                    </div>
                    <ul>
                        <li>
                            <a href={"/"}>獲得アワード一覧</a>
                        </li>
                        <li>
                            <a href={"/"}>作品設定</a>
                        </li>
                        <li>
                            <a href={"/"}>アカウント設定</a>
                        </li>
                        <li>
                            <form action={"/logout"} method={"POST"}>
                                <button type={'submit'}>
                                    ログアウト
                                </button>
                            </form>
                        </li>
                    </ul>
                </div>
            )
        }
        return(
            <div>
                <a href={"/"} className={"logo-mobile"}/>
                <a href={"/"} className={"logo-desktop"}/>
                <ul className={"menu"}>
                    <li>
                        <a href={"/"}>イベント一覧</a>
                    </li>
                    <li>
                        <a href={"/"}>作品一覧</a>
                    </li>
                </ul>
                {headerRightSide}
                <button className={`hamburger-button ${this.state.hamburgerImage}`} onClick={()=>this.onClickHamburgerButton()}/>
                <div className={`pull-down-menu ${this.state.pullDownMenu}`}>
                    <ul className={"common"}>
                        <li>
                            <a href={"/"}>イベント</a>
                        </li>
                        <li>
                            <a href={"/"}>作品一覧</a>
                        </li>
                    </ul>
                    {pullDownMenuBottom}
                </div>
                {popupMenu}
            </div>
        )
    }
}

export default Header
